SET BUILD="11.1.5.60428"

@REM Clear existing files
del /Q *.csv

@REM Download new file versions
curl -o "Achievement.%BUILD%.csv" "https://wago.tools/db2/Achievement/csv?build=%BUILD%"
curl -o "Criteria.%BUILD%.csv" "https://wago.tools/db2/Criteria/csv?build=%BUILD%"
curl -o "CriteriaTree.%BUILD%.csv" "https://wago.tools/db2/CriteriaTree/csv?build=%BUILD%"
curl -o "Item.%BUILD%.csv" "https://wago.tools/db2/Item/csv?build=%BUILD%"
curl -o "ItemEffect.%BUILD%.csv" "https://wago.tools/db2/ItemEffect/csv?build=%BUILD%"
curl -o "ItemXItemEffect.%BUILD%.csv" "https://wago.tools/db2/ItemXItemEffect/csv?build=%BUILD%"
curl -o "ModifierTree.%BUILD%.csv" "https://wago.tools/db2/ModifierTree/csv?build=%BUILD%"
curl -o "SpellEffect.%BUILD%.csv" "https://wago.tools/db2/SpellEffect/csv?build=%BUILD%"
curl -o "TransmogSet.%BUILD%.csv" "https://wago.tools/db2/TransmogSet/csv?build=%BUILD%"
curl -o "TransmogSetItem.%BUILD%.csv" "https://wago.tools/db2/TransmogSetItem/csv?build=%BUILD%"

call CleanCSVs.bat "%~dp0\SpellEffect.%BUILD%.csv"