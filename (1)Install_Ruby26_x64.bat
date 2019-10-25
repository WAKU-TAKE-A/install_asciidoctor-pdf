set dn_ruby_bin=C:\Ruby26-x64\bin

ReadMe.jpg
ReadMe2.jpg

dir /A-D /B /S | findstr "rubyinstaller[^\\]*$" > tmp.txt
for /f "usebackq" %%i in (tmp.txt) do set FN_INSTALLER=%%i
del tmp.txt
%FN_INSTALLER%

if exist %USERPROFILE%\Gemfile (del %USERPROFILE%\Gemfile)
if exist %USERPROFILE%\Gemfile.lock (del %USERPROFILE%\Gemfile.lock)
copy Gemfile.Edited %USERPROFILE%\Gemfile
set path=%dn_ruby_bin%

bundle install
