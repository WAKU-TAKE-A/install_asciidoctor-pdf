ReadMe1.jpg
ReadMe2.jpg

for /f "usebackq" %%i in (`where rubyinstaller*`) do set FN_INSTALLER=%%i

echo Run "%FN_INSTALLER%" > InstallLog.txt
%FN_INSTALLER%
