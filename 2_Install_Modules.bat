if exist http_proxy.txt (for /f "usebackq" %%p in (http_proxy.txt) do set http_proxy=%%p)
if exist https_proxy.txt (for /f "usebackq" %%q in (https_proxy.txt) do set https_proxy=%%q)

bundle install >> InstallLog.txt
