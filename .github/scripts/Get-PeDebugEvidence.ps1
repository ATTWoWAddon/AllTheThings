param([Parameter(Mandatory)][string]$Path, [Parameter(Mandatory)][string]$Output)
$ErrorActionPreference = 'Stop'
$bytes = [IO.File]::ReadAllBytes($Path)
$stream = [IO.MemoryStream]::new($bytes, $false)
try {
    $pe = [System.Reflection.PortableExecutable.PEReader]::new($stream)
    $headers = $pe.PEHeaders
    $entries = @(
        foreach ($entry in $pe.ReadDebugDirectory()) {
            if ($entry.DataSize -lt 0 -or $entry.DataPointer -lt 0 -or ([long]$entry.DataPointer + $entry.DataSize) -gt $bytes.Length) { throw 'Debug directory data outside file' }
            [byte[]]$raw = [byte[]]::new($entry.DataSize)
            if ($entry.DataSize -gt 0) { [Array]::Copy($bytes, $entry.DataPointer, $raw, 0, $entry.DataSize) }
            $view=$null; $checksum=$null
            if ($entry.Type -eq [System.Reflection.PortableExecutable.DebugDirectoryEntryType]::CodeView) {
                $v=$pe.ReadCodeViewDebugDirectoryData($entry)
                $view=[ordered]@{ guid=$v.Guid.ToString(); age=$v.Age; path=$v.Path; portable=$entry.IsPortableCodeView }
            }
            if ($entry.Type -eq [System.Reflection.PortableExecutable.DebugDirectoryEntryType]::PdbChecksum) {
                $v=$pe.ReadPdbChecksumDebugDirectoryData($entry)
                $checksum=[ordered]@{ algorithm=$v.AlgorithmName; value=[Convert]::ToBase64String([byte[]]$v.Checksum) }
            }
            [ordered]@{ type=$entry.Type.ToString(); stamp=$entry.Stamp; majorVersion=$entry.MajorVersion; minorVersion=$entry.MinorVersion
                dataSize=$entry.DataSize; dataRva=$entry.DataRelativeVirtualAddress; dataPointer=$entry.DataPointer
                raw=[Convert]::ToBase64String($raw); codeView=$view; pdbChecksum=$checksum }
        }
    )
    $info=[ordered]@{
        sha256=(Get-FileHash -LiteralPath $Path -Algorithm SHA256).Hash.ToLowerInvariant()
        coffTimestamp=$headers.CoffHeader.TimeDateStamp
        stable=[ordered]@{
            coffCharacteristics=$headers.CoffHeader.Characteristics.ToString(); imageBase=$headers.PEHeader.ImageBase
            subsystem=$headers.PEHeader.Subsystem.ToString(); dllCharacteristics=$headers.PEHeader.DllCharacteristics.ToString()
            sectionAlignment=$headers.PEHeader.SectionAlignment; fileAlignment=$headers.PEHeader.FileAlignment
            osMajor=$headers.PEHeader.MajorOperatingSystemVersion; osMinor=$headers.PEHeader.MinorOperatingSystemVersion
            imageMajor=$headers.PEHeader.MajorImageVersion; imageMinor=$headers.PEHeader.MinorImageVersion
            subsystemMajor=$headers.PEHeader.MajorSubsystemVersion; subsystemMinor=$headers.PEHeader.MinorSubsystemVersion
            stackReserve=$headers.PEHeader.SizeOfStackReserve; stackCommit=$headers.PEHeader.SizeOfStackCommit
            heapReserve=$headers.PEHeader.SizeOfHeapReserve; heapCommit=$headers.PEHeader.SizeOfHeapCommit
        }
        peChecksum=$headers.PEHeader.CheckSum; addressOfEntryPoint=$headers.PEHeader.AddressOfEntryPoint
        sizeOfImage=$headers.PEHeader.SizeOfImage; debugEntries=$entries
    }
    [IO.File]::WriteAllText($Output, ($info | ConvertTo-Json -Depth 20), [Text.UTF8Encoding]::new($false))
} finally { if ($pe) { $pe.Dispose() }; $stream.Dispose() }
