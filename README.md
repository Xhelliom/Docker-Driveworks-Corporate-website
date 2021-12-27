# Docker-Driveworks-Corporate-website


## Create a IIS Server with integration theme corresponding to this variables :

### Environment variable :
- USR : The default user to execute the group.
- PASSWORD : The password of the user.
- SERVER : The server that host Driveworks Group (Driveworks Pro Server) FQDN (https://192.168.1.100).
- GROUP : The group to connect to.
- DRIVEAPP : If there is a driveapp, the alias of the driveapp to execute.
- DW_LIVE_LICENSE_SERVER : Driveworks Live Licence Server to obtain licences

### Example of docker run command :

`docker run --rm -d -p 8001:80 -e USR='guest' -e PASSWORD='guest' -e SERVER='http://localhost' -e GROUP='Support' xhelliom/driveworks-corporate-website:latest`

### Docker Build Command
 `docker build -t xhelliom/driveworks-corporate-website:latest .`