@ECHO OFF
cd /d "..\.tools\"
"Parser.exe" debug-nolog baseconfig="../.db/standard/.config/retail/retail.config" config="../.db/standard/.config/retail/ptr.config" config="../.db/shared/.config/debug.config"
