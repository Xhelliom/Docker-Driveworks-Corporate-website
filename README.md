# Docker-Driveworks-Corporate-website


## Create a IIS Server with integration theme corresponding to this variables :

### Environment variable :
- USR : The default user to execute the group.
- PASSWORD : The password of the user.
- SERVER : The server that host Driveworks Group (Driveworks Pro Server).
- GROUP : The group to connect to.
- DRIVEAPP : If there is a driveapp, the alias of the driveapp to execute.
- DW_LIVE_LICENSE_SERVER : Driveworks Live Licence Server to obtain licences

### Example of docker run command :

`docker run xhelliom/Driveworks-Coporate-Website:latest -p 8001:80 -e USR='Admin' -e PASSWORD='' -e SERVER='localhost' -e GROUP='Support' -e DRIVEAPP='CPQ' -e DW_LIVE_LICENSE_SERVER='localhost'`

### Docker Build Command
 `docker build -t xhelliom/Driveworks-Coporate-Website:latest .`