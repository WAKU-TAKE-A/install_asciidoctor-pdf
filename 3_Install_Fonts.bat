if exist http_proxy.txt (for /f "usebackq" %%p in (http_proxy.txt) do set http_proxy=%%p)
if exist https_proxy.txt (for /f "usebackq" %%q in (https_proxy.txt) do set https_proxy=%%q)

set fn_transform_1.5.0.beta.8=C:\Ruby26-x64\lib\ruby\gems\2.6.0\gems\asciidoctor-pdf-1.5.0.beta.8\lib\asciidoctor\pdf\formatted_text\transform.rb

if exist %fn_transform_1.5.0.beta.8% (copy /y %fn_transform_1.5.0.beta.8% %fn_transform_1.5.0.beta.8%.org)
if exist %fn_transform_1.5.0.beta.8% (copy /y  transform.rb.1.5.0.beta.8  %fn_transform_1.5.0.beta.8%)

ruby Download_Fonts.rb >> InstallLog.txt
