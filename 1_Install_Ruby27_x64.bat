ReadMe1.jpg
ReadMe2.jpg
ReadMe3.jpg

dir /A-D /B /S | findstr "rubyinstaller[^\\]*$" > tmp.txt
for /f "usebackq" %%i in (tmp.txt) do set FN_INSTALLER=%%i
del tmp.txt

echo Run "%FN_INSTALLER%" > InstallLog.txt
%FN_INSTALLER%