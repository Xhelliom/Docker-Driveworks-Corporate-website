FROM mcr.microsoft.com/windows/servercore/iis

RUN powershell -NoProfile -Command Remove-Item -Recurse C:\inetpub\wwwroot\*

# Script to update JS files an launch IIS server service
ADD init.ps1 . 

ENV SERVER="http://localhost" \
GROUP="Support" \
USR="guest" \
PASSWORD="guest" \
DRIVEAPP="CPQ" \
DW_LIVE_LICENSE_SERVER="localhost"

ADD https://github.com/DriveWorks/IntegrationThemeExample-CorporateWebsite/archive/refs/heads/main.zip ".\integration.zip"
#RUN powershell -NoProfile -Command \
#Invoke-WebRequest -URI "https://github.com/DriveWorks/IntegrationThemeExample-CorporateWebsite/archive/refs/heads/main.zip" \
#-OutFile "integration.zip"

RUN powershell -NoProfile -Command \
Expand-Archive integration.zip -DestinationPath c:\inetpub\wwwroot

WORKDIR /inetpub/wwwroot

RUN powershell -NoProfile -Command \
move-item -path .\IntegrationThemeExample-CorporateWebsite-main\* c:\inetpub\wwwroot

EXPOSE 80

ENTRYPOINT [ "powershell.exe", "c:\\init.ps1" ]