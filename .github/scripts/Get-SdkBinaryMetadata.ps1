param([Parameter(Mandatory)][string]$Path, [Parameter(Mandatory)][string]$Output)
$ErrorActionPreference = 'Stop'
$stream = [IO.File]::OpenRead($Path)
try {
    $pe = [System.Reflection.PortableExecutable.PEReader]::new($stream)
    $md = [System.Reflection.Metadata.PEReaderExtensions]::GetMetadataReader($pe)
    $headers = $pe.PEHeaders
    $asm = $md.GetAssemblyDefinition()
    $module = $md.GetModuleDefinition()
    $methods = foreach ($h in $md.MethodDefinitions) {
        $d = $md.GetMethodDefinition($h)
        $body = $null
        if ($d.RelativeVirtualAddress -ne 0) {
            $b = [System.Reflection.Metadata.PEReaderExtensions]::GetMethodBody($pe, $d.RelativeVirtualAddress)
            $body = [ordered]@{
                il = [Convert]::ToBase64String($b.GetILBytes())
                serializedBodySize = $b.Size
                serializedBodySha256 = [Convert]::ToHexString([Security.Cryptography.SHA256]::HashData([byte[]]$pe.GetSectionData($d.RelativeVirtualAddress).GetContent(0, $b.Size))).ToLowerInvariant()
                maxStack = $b.MaxStack
                initLocals = $b.LocalVariablesInitialized
                localSignatureToken = [System.Reflection.Metadata.Ecma335.MetadataTokens]::GetToken([System.Reflection.Metadata.EntityHandle]$b.LocalSignature)
                exceptions = @($b.ExceptionRegions | ForEach-Object { [ordered]@{
                    kind = $_.Kind.ToString(); tryOffset = $_.TryOffset; tryLength = $_.TryLength
                    handlerOffset = $_.HandlerOffset; handlerLength = $_.HandlerLength
                    filterOffset = $_.FilterOffset
                    catchType = [System.Reflection.Metadata.Ecma335.MetadataTokens]::GetToken([System.Reflection.Metadata.EntityHandle]$_.CatchType)
                } })
            }
        }
        [ordered]@{
            name = $md.GetString($d.Name)
            declaringType = [System.Reflection.Metadata.Ecma335.MetadataTokens]::GetToken([System.Reflection.Metadata.EntityHandle]$d.GetDeclaringType())
            attributes = [int]$d.Attributes; implAttributes = [int]$d.ImplAttributes
            signature = [Convert]::ToBase64String($md.GetBlobBytes($d.Signature)); body = $body
        }
    }
    $types = foreach ($h in $md.TypeDefinitions) {
        $d = $md.GetTypeDefinition($h)
        [ordered]@{ namespace = $md.GetString($d.Namespace); name = $md.GetString($d.Name); attributes = [int]$d.Attributes
            baseType = [System.Reflection.Metadata.Ecma335.MetadataTokens]::GetToken([System.Reflection.Metadata.EntityHandle]$d.BaseType) }
    }
    $fields = foreach ($h in $md.FieldDefinitions) {
        $d = $md.GetFieldDefinition($h)
        $initializedData = ''
        $rva = $d.GetRelativeVirtualAddress()
        if ($rva -ne 0) {
            $signature = $md.GetBlobReader($d.Signature)
            $header = $signature.ReadSignatureHeader()
            $typeCode = $signature.ReadSignatureTypeCode()
            if ($header.Kind -ne [System.Reflection.Metadata.SignatureKind]::Field -or $typeCode -ne [System.Reflection.Metadata.SignatureTypeCode]::TypeHandle) { throw 'Unsupported initialized field signature' }
            $handle = $signature.ReadTypeHandle()
            if ($handle.Kind -ne [System.Reflection.Metadata.HandleKind]::TypeDefinition) { throw 'Unsupported initialized field type' }
            $layout = $md.GetTypeDefinition([System.Reflection.Metadata.TypeDefinitionHandle]$handle).GetLayout()
            if ($layout.Size -le 0) { throw 'Initialized field size is unavailable' }
            $initializedData = [Convert]::ToBase64String([byte[]]$pe.GetSectionData($rva).GetContent(0, $layout.Size))
        }
        [ordered]@{ name = $md.GetString($d.Name); attributes = [int]$d.Attributes
            signature = [Convert]::ToBase64String($md.GetBlobBytes($d.Signature)); initializedData = $initializedData }
    }
    $references = foreach ($h in $md.AssemblyReferences) {
        $d = $md.GetAssemblyReference($h)
        [ordered]@{ name = $md.GetString($d.Name); version = $d.Version.ToString(); culture = $md.GetString($d.Culture)
            flags = [int]$d.Flags; publicKeyOrToken = [Convert]::ToBase64String($md.GetBlobBytes($d.PublicKeyOrToken)) }
    }
    $resourceDir = $headers.PEHeader.ResourceTableDirectory
    $nativeResource = if ($resourceDir.Size) { [Convert]::ToBase64String([byte[]]$pe.GetSectionData($resourceDir.RelativeVirtualAddress).GetContent(0, $resourceDir.Size)) } else { '' }
    $managedDir = $headers.CorHeader.ResourcesDirectory
    $managedResource = if ($managedDir.Size) { [Convert]::ToBase64String([byte[]]$pe.GetSectionData($managedDir.RelativeVirtualAddress).GetContent(0, $managedDir.Size)) } else { '' }
    $framework = @($asm.GetCustomAttributes() | ForEach-Object {
        $attribute = $md.GetCustomAttribute($_)
        [Text.Encoding]::UTF8.GetString($md.GetBlobBytes($attribute.Value))
    } | Where-Object { $_ -match '\.NETFramework,Version=v4\.8' })
    if ($framework.Count -ne 1) { throw 'Expected .NET Framework 4.8 target framework attribute' }
    # Preserve the original metadata hash with only the module MVID normalized.
    $metadata = [byte[]]$pe.GetMetadata().GetContent()
    $mvidBytes = $md.GetGuid($module.Mvid).ToByteArray()
    $matches = @()
    for ($i = 0; $i -le $metadata.Length - $mvidBytes.Length; $i++) {
        $match = $true
        for ($j = 0; $j -lt $mvidBytes.Length; $j++) { if ($metadata[$i + $j] -ne $mvidBytes[$j]) { $match = $false; break } }
        if ($match) { $matches += $i }
    }
    if ($matches.Count -ne 1) { throw "Expected exactly one MVID in CLR metadata, found $($matches.Count)" }
    [Array]::Clear($metadata, $matches[0], $mvidBytes.Length)
    $normalizedMetadata = [Convert]::ToHexString([Security.Cryptography.SHA256]::HashData($metadata)).ToLowerInvariant()
    # Independently preserve the MVID-only hash above. In the second copy, normalize
    # only RVA columns after checking each row against MetadataReader's typed API.
    [byte[]]$layoutMetadata = $metadata.Clone()
    $rvaRows = @()
    $fieldRows = [System.Reflection.Metadata.Ecma335.MetadataReaderExtensions]::GetTableRowCount($md,[System.Reflection.Metadata.Ecma335.TableIndex]::Field)
    $seenFields = [Collections.Generic.HashSet[int]]::new()
    foreach ($table in @([System.Reflection.Metadata.Ecma335.TableIndex]::MethodDef, [System.Reflection.Metadata.Ecma335.TableIndex]::FieldRva)) {
        $count = [System.Reflection.Metadata.Ecma335.MetadataReaderExtensions]::GetTableRowCount($md,$table)
        $rowSize = [System.Reflection.Metadata.Ecma335.MetadataReaderExtensions]::GetTableRowSize($md,$table)
        if ($count -eq 0) { continue }
        $offset = [System.Reflection.Metadata.Ecma335.MetadataReaderExtensions]::GetTableMetadataOffset($md,$table)
        if ($rowSize -lt 4 -or $offset -lt 0 -or ([long]$offset + [long]$count * $rowSize) -gt $layoutMetadata.Length) { throw "Invalid $table row boundaries" }
        if ($table -eq [System.Reflection.Metadata.Ecma335.TableIndex]::FieldRva -and $rowSize -notin 6,8) { throw "Unexpected FieldRva row size: $rowSize" }
        for ($row=1; $row -le $count; $row++) {
            $at = $offset + ($row-1)*$rowSize
            $rawRva = [BitConverter]::ToUInt32($layoutMetadata,$at)
            if ($table -eq [System.Reflection.Metadata.Ecma335.TableIndex]::MethodDef) {
                $handle = [System.Reflection.Metadata.Ecma335.MetadataTokens]::MethodDefinitionHandle($row)
                $readerRva = $md.GetMethodDefinition($handle).RelativeVirtualAddress
            } else {
                $fieldRow = if ($rowSize -eq 6) { [BitConverter]::ToUInt16($layoutMetadata,$at+4) } else { [BitConverter]::ToUInt32($layoutMetadata,$at+4) }
                if ($fieldRow -lt 1 -or $fieldRow -gt $fieldRows -or -not $seenFields.Add([int]$fieldRow)) { throw "Invalid FieldRva field row: $fieldRow" }
                $handle = [System.Reflection.Metadata.Ecma335.MetadataTokens]::FieldDefinitionHandle([int]$fieldRow)
                $readerRva = $md.GetFieldDefinition($handle).GetRelativeVirtualAddress()
                if ($rawRva -eq 0) { throw "FieldRva row $row has null RVA" }
            }
            if ([long]$readerRva -ne [long]$rawRva) { throw "$table row $row raw RVA does not match reader API" }
            $rvaRows += [ordered]@{ table=$table.ToString(); row=$row; token=[System.Reflection.Metadata.Ecma335.MetadataTokens]::GetToken([System.Reflection.Metadata.EntityHandle]$handle); offset=$at; originalRva=$rawRva }
            [Array]::Clear($layoutMetadata,$at,4)
        }
    }
    $layoutHash = [Convert]::ToHexString([Security.Cryptography.SHA256]::HashData($layoutMetadata)).ToLowerInvariant()
    $version = [Diagnostics.FileVersionInfo]::GetVersionInfo($Path)
    $info = [ordered]@{
        sha256 = (Get-FileHash -LiteralPath $Path -Algorithm SHA256).Hash.ToLowerInvariant()
        mvid = $md.GetGuid($module.Mvid).ToString(); timestamp = $headers.CoffHeader.TimeDateStamp
        layoutNormalizedMetadataSha256 = $layoutHash; rvaRows = $rvaRows
        contract = [ordered]@{
            machine = $headers.CoffHeader.Machine.ToString(); peMagic = $headers.PEHeader.Magic.ToString()
            subsystem = $headers.PEHeader.Subsystem.ToString(); corFlags = [int]$headers.CorHeader.Flags
            entryPoint = $headers.CorHeader.EntryPointTokenOrRelativeVirtualAddress
            assemblyName = $md.GetString($asm.Name); assemblyVersion = $asm.Version.ToString()
            normalizedMetadataSha256 = $normalizedMetadata
            targetFramework = '.NETFramework,Version=v4.8'
            assemblyCulture = $md.GetString($asm.Culture); publicKey = [Convert]::ToBase64String($md.GetBlobBytes($asm.PublicKey))
            fileVersion = $version.FileVersion; productVersion = $version.ProductVersion
            references = @($references); types = @($types); fields = @($fields); methods = @($methods)
            nativeResource = $nativeResource; managedResource = $managedResource
        }
    }
    [IO.File]::WriteAllText($Output, ($info | ConvertTo-Json -Depth 30), [Text.UTF8Encoding]::new($false))
} finally { if ($pe) { $pe.Dispose() }; $stream.Dispose() }
