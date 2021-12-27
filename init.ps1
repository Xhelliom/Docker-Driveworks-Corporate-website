#Read the JS File for Corporate Website
#$JS = get-content -path c:\Driveworks\example-sites\corporate-website\config.js -Raw
#replace text in the JS File
(get-content -path c:\inetpub\wwwroot\config.js -Raw) -Replace 'REPLACESERVER', $env:SERVER | Set-Content -Path C:\driveworks\example-sites\corporate-website\config.js
(get-content -path c:\inetpub\wwwroot\config.js -Raw)  -Replace 'REPLACEGROUP', $env:GROUP | Set-Content -Path C:\driveworks\example-sites\corporate-website\config.js

#For DriveApp
#$JS = get-content -path c:\Driveworks\DriveApp\config.js -Raw
(get-content -path c:\inetpub\wwwroot\DriveApp\config.js -Raw) -Replace 'REPLACESERVER', $env:SERVER | Set-Content -Path C:\driveworks\DriveApp\config.js
(get-content -path c:\inetpub\wwwroot\DriveApp\config.js -Raw) -Replace 'REPLACEGROUP', $env:GROUP | Set-Content -Path C:\driveworks\DriveApp\config.js
(get-content -path c:\inetpub\wwwroot\DriveApp\config.js -Raw) -Replace 'REPLACEDRIVEAPP', $env:DRIVEAPP | Set-Content -Path C:\driveworks\DriveApp\config.js

C:\\ServiceMonitor.exe w3svc
