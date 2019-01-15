# WildFLyThorntailDocker

## How to run this micro service

- Firstly do a `mvn clean install`
 - Followed by `mvn thorntail:run`
 - Or `java -jar target/wildfly-thorntail.jar`

 Then this will allow to test the endpoint on localhost:8080/rest/hello

 Lastly, it has a docker file which allows to create a container and set some env vars.

#Building the docker image
 To build the image type the following `docker build -t wildfly/thorntail .` This will create the docker image based on the dockerFile defined.
 Then you can run the image as follow `docker run -d -p 8080:8080 wildfly/thorntail`

Then if you want to see the logs for wildFly type the following (where the long id is the container image id) `docker logs -f f117b18b251b7e0fc3ca6456b6214800e0f85da1312f8c21524555cbc54236c9`