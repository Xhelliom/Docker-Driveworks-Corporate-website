#Read the JS File for Corporate Website
#$JS = get-content -path c:\inetpub\wwwroot\config.js -Raw
#replace text in the JS File
(get-content -path c:\inetpub\wwwroot\config.js -Raw) -Replace 'serverUrl: ""', 'serverUrl: "REPLACESERVER"' | Set-Content -Path c:\inetpub\wwwroot\config.js
(get-content -path c:\inetpub\wwwroot\config.js -Raw) -Replace 'REPLACESERVER', $env:SERVER | Set-Content -Path c:\inetpub\wwwroot\config.js
(get-content -path c:\inetpub\wwwroot\config.js -Raw) -Replace 'groupAlias: ""', 'groupAlias: "REPLACEGROUP"' | Set-Content -Path c:\inetpub\wwwroot\config.js
(get-content -path c:\inetpub\wwwroot\config.js -Raw) -Replace 'REPLACEGROUP', $env:GROUP | Set-Content -Path c:\inetpub\wwwroot\config.js

C:\\ServiceMonitor.exe w3svc
