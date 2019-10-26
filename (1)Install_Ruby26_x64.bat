set dn_ruby_bin=C:\Ruby26-x64\bin

if exist http_proxy.txt (for /f "usebackq" %p in (http_proxy.txt) do set http_proxy=%p)
if exist https_proxy.txt (for /f "usebackq" %q in (https_proxy.txt) do set https_proxy=%q)

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
