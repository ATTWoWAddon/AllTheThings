param([Parameter(Mandatory=$true)][string]$Executable, [Parameter(Mandatory=$true)][string]$Output)
$ErrorActionPreference = 'Stop'
$assembly = [Reflection.Assembly]::LoadFrom($Executable)
$moduleAttribute = $assembly.GetType('ATT.DB.DataModuleAttribute', $true)
$exportAttribute = $assembly.GetType('ATT.DB.ExportableDataAttribute', $true)
$localizeAttribute = $assembly.GetType('ATT.DB.LocalizeAttribute', $true)
$entry = $assembly.EntryPoint
if ($null -eq $entry) { throw 'Missing Parser entry point' }
$argumentTypes = @($entry.GetParameters() | ForEach-Object { $_.ParameterType.FullName })
$entryPoint = $entry.DeclaringType.FullName + '.' + $entry.Name + '(' + [string]::Join(',', [string[]]$argumentTypes) + ')->' + $entry.ReturnType.FullName
$allTypes = @($assembly.GetTypes())
$modules = @(
    foreach ($type in $allTypes) {
        $attributes = @($type.GetCustomAttributes($moduleAttribute, $true))
        if ($attributes.Count -eq 0) { continue }
        if ($attributes.Count -ne 1) { throw "Unexpected DataModule attribute count: $($type.FullName)" }
        $properties = @(
            foreach ($property in $type.GetProperties()) {
                $exported = @($property.GetCustomAttributes($exportAttribute, $true))
                $localized = @($property.GetCustomAttributes($localizeAttribute, $true))
                if ($exported.Count -gt 1 -or $localized.Count -gt 1) { throw "Unexpected property attribute count: $($type.FullName).$($property.Name)" }
                $exportName = if ($exported.Count -eq 1) { $exportAttribute.GetField('Name').GetValue($exported[0]) } else { $null }
                [ordered]@{
                    name = $property.Name; declaringType = $property.DeclaringType.FullName; propertyType = $property.PropertyType.FullName
                    indexTypes = @($property.GetIndexParameters() | ForEach-Object { $_.ParameterType.FullName })
                    exportable = $exported.Count -eq 1; exportName = $exportName; localized = $localized.Count -eq 1
                }
            }
        )
        [ordered]@{ name=$type.Name; fullName=$type.FullName; attributeName=$moduleAttribute.GetField('Name').GetValue($attributes[0]); properties=$properties }
    }
)
$method = $moduleAttribute.GetMethod('GetAllDataModules', [Reflection.BindingFlags]'Public,Static')
if ($null -eq $method) { throw 'Missing DataModule discovery method' }
$map = $method.Invoke($null, [object[]]@())
$resolved = @($map.Keys | Sort-Object -CaseSensitive | ForEach-Object { [ordered]@{ name=$_; fullName=$map[$_].FullName } })
$result = [ordered]@{ hostArchitecture=([IntPtr]::Size * 8); entryPoint=$entryPoint; allTypes=@($allTypes | ForEach-Object { $_.FullName }); modules=$modules; resolvedModules=$resolved }
[IO.File]::WriteAllText($Output, ($result | ConvertTo-Json -Depth 20), (New-Object Text.UTF8Encoding $false))
