"Item_DB_Compare_Tool.exe" questDB > "Compared_questDBs.txt"

xcopy /K /Y "questDB-FULL.json" "..\..\.db\standard\00 - Item DB\questDB.json"

wait 5

start "" "Compared_questDBs.txt"