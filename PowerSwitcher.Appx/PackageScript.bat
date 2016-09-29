if not exist "../Build" mkdir ../Build
if not exist "../Build/Appx" mkdir ../Build/Appx

MakeAppx pack /f MappingFile.txt /p ../Build/Appx/PowerSwitcher.appx
signtool.exe sign -f ../Build/Certs/my.pfx -fd SHA256 -v ../Build/Appx/PowerSwitcher.appx