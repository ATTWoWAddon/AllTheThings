[CmdletBinding()]
param(
    [Parameter(Mandatory = $true)][string] $AssemblyPath,
    [Parameter(Mandatory = $true)][string] $DependencyDirectory
)

$ErrorActionPreference = 'Stop'
Set-StrictMode -Version Latest

function Sort-Ordinal([string[]] $Values) {
    $copy = [string[]] @($Values)
    [Array]::Sort($copy, [StringComparer]::Ordinal)
    return $copy
}

function Format-Type([Type] $Type) {
    if ($Type.IsByRef) { return (Format-Type $Type.GetElementType()) + '&' }
    if ($Type.IsPointer) { return (Format-Type $Type.GetElementType()) + '*' }
    if ($Type.IsArray) { return (Format-Type $Type.GetElementType()) + '[' + (',' * ($Type.GetArrayRank() - 1)) + ']' }
    if ($Type.IsGenericParameter) {
        $prefix = if ($null -ne $Type.DeclaringMethod) { '!!' } else { '!' }
        return $prefix + $Type.GenericParameterPosition
    }
    if ($Type.IsGenericType) {
        $definition = $Type.GetGenericTypeDefinition()
        $arguments = @($Type.GetGenericArguments() | ForEach-Object { Format-Type $_ })
        return '[' + $definition.Assembly.GetName().Name + ']' + $definition.FullName + '<' + ($arguments -join ',') + '>'
    }
    return '[' + $Type.Assembly.GetName().Name + ']' + $Type.FullName
}

function Format-Value($Value) {
    if ($null -eq $Value) { return '<null>' }
    if ($Value -is [string]) { return 'string:' + $Value }
    if ($Value -is [char]) { return 'char:' + [int] $Value }
    if ($Value -is [bool]) { return 'bool:' + $Value.ToString().ToLowerInvariant() }
    if ($Value -is [Type]) { return 'type:' + (Format-Type $Value) }
    if ($Value -is [IFormattable]) { return $Value.GetType().FullName + ':' + $Value.ToString($null, [Globalization.CultureInfo]::InvariantCulture) }
    return $Value.GetType().FullName + ':' + $Value.ToString()
}

function Format-PublicKeyToken([byte[]] $Token) {
    if ($null -eq $Token -or $Token.Length -eq 0) { return '' }
    return [BitConverter]::ToString($Token).Replace('-', '').ToLowerInvariant()
}

function Format-AttributeArgument($Argument) {
    $value = $Argument.Value
    if ($value -is [System.Collections.IList] -and $value -isnot [string]) {
        $formatted = @($value | ForEach-Object { Format-AttributeArgument $_ })
        return (Format-Type $Argument.ArgumentType) + '=[' + ($formatted -join ',') + ']'
    }
    return (Format-Type $Argument.ArgumentType) + '=' + (Format-Value $value)
}

function Format-Parameter($Parameter) {
    $text = (Format-Type $Parameter.ParameterType) + ' ' + $Parameter.Name
    if ($Parameter.IsIn) { $text += ' [in]' }
    if ($Parameter.IsOut) { $text += ' [out]' }
    if ($Parameter.IsOptional) { $text += ' [optional]' }
    if ($Parameter.HasDefaultValue) { $text += ' [default=' + (Format-Value $Parameter.RawDefaultValue) + ']' }
    $required = @($Parameter.GetRequiredCustomModifiers() | ForEach-Object { Format-Type $_ })
    $optional = @($Parameter.GetOptionalCustomModifiers() | ForEach-Object { Format-Type $_ })
    if ($required.Count) { $text += ' [modreq=' + ($required -join ',') + ']' }
    if ($optional.Count) { $text += ' [modopt=' + ($optional -join ',') + ']' }
    return $text
}

function Format-Modifiers($Member) {
    $required = @($Member.GetRequiredCustomModifiers() | ForEach-Object { Format-Type $_ })
    $optional = @($Member.GetOptionalCustomModifiers() | ForEach-Object { Format-Type $_ })
    return ' modreq=[' + ($required -join ',') + '] modopt=[' + ($optional -join ',') + ']'
}

function Get-Visibility($Member) {
    if ($Member.IsPublic) { return 'public' }
    if ($Member.IsFamily) { return 'protected' }
    if ($Member.IsFamilyOrAssembly) { return 'protected-internal' }
    return 'non-public'
}

function Test-VisibleType([Type] $Type) {
    if ($Type.IsPublic) { return $true }
    if (!$Type.IsNested) { return $false }
    if (!($Type.IsNestedPublic -or $Type.IsNestedFamily -or $Type.IsNestedFamORAssem)) { return $false }
    return Test-VisibleType $Type.DeclaringType
}

function Format-GenericParameters([Type[]] $Parameters) {
    $parts = foreach ($parameter in $Parameters) {
        $constraints = @($parameter.GetGenericParameterConstraints() | ForEach-Object { Format-Type $_ })
        $constraints = Sort-Ordinal $constraints
        $parameter.Name + ':' + $parameter.GenericParameterAttributes.ToString() + ':' + ($constraints -join ',')
    }
    return '[' + ($parts -join ';') + ']'
}

$resolvedAssembly = (Resolve-Path -LiteralPath $AssemblyPath).ProviderPath
$resolvedDependencies = (Resolve-Path -LiteralPath $DependencyDirectory).ProviderPath
if (!(Test-Path -LiteralPath $resolvedAssembly -PathType Leaf)) { throw 'AssemblyPath must be a file.' }
if (!(Test-Path -LiteralPath $resolvedDependencies -PathType Container)) { throw 'DependencyDirectory must be a directory.' }

# Reflection-only loading inspects metadata; no target assembly code or attribute constructor executes.
$resolver = [ResolveEventHandler] {
    param($sender, $eventArgs)
    $name = New-Object System.Reflection.AssemblyName($eventArgs.Name)
    $dependency = Join-Path $resolvedDependencies ($name.Name + '.dll')
    if (Test-Path -LiteralPath $dependency -PathType Leaf) {
        $identity = [Reflection.AssemblyName]::GetAssemblyName($dependency)
        if (![Reflection.AssemblyName]::ReferenceMatchesDefinition($name, $identity)) {
            throw ('Dependency identity mismatch for ' + $name.FullName)
        }
        $requestedToken = Format-PublicKeyToken $name.GetPublicKeyToken()
        $actualToken = Format-PublicKeyToken $identity.GetPublicKeyToken()
        if ($requestedToken -ne $actualToken) { throw ('Dependency public key mismatch for ' + $name.FullName) }
        return [Reflection.Assembly]::ReflectionOnlyLoadFrom($dependency)
    }
    return [Reflection.Assembly]::ReflectionOnlyLoad($eventArgs.Name)
}
[AppDomain]::CurrentDomain.add_ReflectionOnlyAssemblyResolve($resolver)
try {
    $assembly = [Reflection.Assembly]::ReflectionOnlyLoadFrom($resolvedAssembly)
    $assemblyName = $assembly.GetName()
    $version = [Diagnostics.FileVersionInfo]::GetVersionInfo($resolvedAssembly)
    $selectedAttributes = @(
        'System.Reflection.AssemblyTitleAttribute',
        'System.Reflection.AssemblyDescriptionAttribute',
        'System.Reflection.AssemblyConfigurationAttribute',
        'System.Reflection.AssemblyCompanyAttribute',
        'System.Reflection.AssemblyProductAttribute',
        'System.Reflection.AssemblyCopyrightAttribute',
        'System.Reflection.AssemblyTrademarkAttribute',
        'System.Reflection.AssemblyCultureAttribute',
        'System.Reflection.AssemblyFileVersionAttribute',
        'System.Reflection.AssemblyInformationalVersionAttribute',
        'System.Runtime.InteropServices.ComVisibleAttribute',
        'System.Runtime.InteropServices.GuidAttribute',
        'System.Runtime.Versioning.TargetFrameworkAttribute'
    )
    $assemblyAttributes = foreach ($attribute in $assembly.GetCustomAttributesData()) {
        if ($selectedAttributes -notcontains $attribute.AttributeType.FullName) { continue }
        $arguments = @($attribute.ConstructorArguments | ForEach-Object { Format-AttributeArgument $_ })
        # FrameworkDisplayName is display metadata, not the target framework identity.
        $named = if ($attribute.AttributeType.FullName -eq 'System.Runtime.Versioning.TargetFrameworkAttribute') { @() } else {
            @($attribute.NamedArguments | ForEach-Object { $_.MemberName + '=' + (Format-AttributeArgument $_.TypedValue) })
        }
        $named = Sort-Ordinal $named
        $attribute.AttributeType.FullName + '(' + ($arguments -join ',') + '){' + ($named -join ',') + '}'
    }
    $types = New-Object 'System.Collections.Generic.List[string]'
    $members = New-Object 'System.Collections.Generic.List[string]'
    $binding = [Reflection.BindingFlags]::DeclaredOnly -bor [Reflection.BindingFlags]::Instance -bor [Reflection.BindingFlags]::Static -bor [Reflection.BindingFlags]::Public -bor [Reflection.BindingFlags]::NonPublic
    foreach ($type in $assembly.GetTypes()) {
        if (!(Test-VisibleType $type)) { continue }
        $typeName = Format-Type $type
        $base = if ($null -ne $type.BaseType) { Format-Type $type.BaseType } else { '<null>' }
        $interfaces = Sort-Ordinal @($type.GetInterfaces() | ForEach-Object { Format-Type $_ })
        $generic = if ($type.IsGenericTypeDefinition) { Format-GenericParameters $type.GetGenericArguments() } else { '[]' }
        $visibility = if ($type.IsPublic -or $type.IsNestedPublic) { 'public' } elseif ($type.IsNestedFamily) { 'protected' } else { 'protected-internal' }
        $types.Add($typeName + ' visibility=' + $visibility + ' abstract=' + $type.IsAbstract + ' sealed=' + $type.IsSealed + ' interface=' + $type.IsInterface + ' valueType=' + $type.IsValueType + ' enum=' + $type.IsEnum + ' base=' + $base + ' interfaces=[' + ($interfaces -join ',') + '] generic=' + $generic)
        foreach ($method in @($type.GetConstructors($binding)) + @($type.GetMethods($binding))) {
            $access = Get-Visibility $method
            if ($access -eq 'non-public') { continue }
            $parameters = @($method.GetParameters() | ForEach-Object { Format-Parameter $_ })
            $return = if ($method -is [Reflection.MethodInfo]) { Format-Parameter $method.ReturnParameter } else { '<constructor>' }
            $generic = if ($method.IsGenericMethodDefinition) { Format-GenericParameters $method.GetGenericArguments() } else { '[]' }
            $members.Add($typeName + ' method ' + $access + ' ' + $method.Name + ' static=' + $method.IsStatic + ' abstract=' + $method.IsAbstract + ' virtual=' + $method.IsVirtual + ' final=' + $method.IsFinal + ' return=' + $return + ' generic=' + $generic + ' (' + ($parameters -join ',') + ')')
        }
        foreach ($field in $type.GetFields($binding)) {
            $access = Get-Visibility $field
            if ($access -eq 'non-public') { continue }
            $constant = if ($field.IsLiteral) { Format-Value $field.GetRawConstantValue() } else { '<not-constant>' }
            $members.Add($typeName + ' field ' + $access + ' ' + $field.Name + ' type=' + (Format-Type $field.FieldType) + (Format-Modifiers $field) + ' static=' + $field.IsStatic + ' readonly=' + $field.IsInitOnly + ' constant=' + $constant)
        }
        foreach ($property in $type.GetProperties($binding)) {
            $getter = $property.GetGetMethod($true); $setter = $property.GetSetMethod($true)
            $getAccess = if ($null -eq $getter) { 'absent' } else { Get-Visibility $getter }
            $setAccess = if ($null -eq $setter) { 'absent' } else { Get-Visibility $setter }
            if ($getAccess -in @('absent', 'non-public') -and $setAccess -in @('absent', 'non-public')) { continue }
            $indexes = @($property.GetIndexParameters() | ForEach-Object { Format-Parameter $_ })
            $members.Add($typeName + ' property ' + $property.Name + ' type=' + (Format-Type $property.PropertyType) + (Format-Modifiers $property) + ' get=' + $getAccess + ' set=' + $setAccess + ' indexes=(' + ($indexes -join ',') + ')')
        }
        foreach ($eventMember in $type.GetEvents($binding)) {
            $adder = $eventMember.GetAddMethod($true); $remover = $eventMember.GetRemoveMethod($true)
            $addAccess = if ($null -eq $adder) { 'absent' } else { Get-Visibility $adder }
            $removeAccess = if ($null -eq $remover) { 'absent' } else { Get-Visibility $remover }
            if ($addAccess -in @('absent', 'non-public') -and $removeAccess -in @('absent', 'non-public')) { continue }
            $members.Add($typeName + ' event ' + $eventMember.Name + ' type=' + (Format-Type $eventMember.EventHandlerType) + ' add=' + $addAccess + ' remove=' + $removeAccess)
        }
    }
    $token = $assemblyName.GetPublicKeyToken()
    $result = [ordered]@{
        identity = [ordered]@{ name = $assemblyName.Name; version = $assemblyName.Version.ToString(); culture = $assemblyName.CultureName; publicKeyToken = (Format-PublicKeyToken $token); processorArchitecture = $assemblyName.ProcessorArchitecture.ToString() }
        assemblyAttributes = @(Sort-Ordinal @($assemblyAttributes))
        fileVersion = [ordered]@{ fileVersion = $version.FileVersion; productVersion = $version.ProductVersion; companyName = $version.CompanyName; productName = $version.ProductName; fileDescription = $version.FileDescription; legalCopyright = $version.LegalCopyright; legalTrademarks = $version.LegalTrademarks }
        types = @(Sort-Ordinal @($types.ToArray()))
        members = @(Sort-Ordinal @($members.ToArray()))
        manifestResources = @(Sort-Ordinal @($assembly.GetManifestResourceNames()))
    }
    $result | ConvertTo-Json -Depth 30 -Compress
} finally {
    [AppDomain]::CurrentDomain.remove_ReflectionOnlyAssemblyResolve($resolver)
}
