FROM java:openjdk-8-jdk

COPY target/wildfly-thorntail.jar /opt/thorntail.jar
#COPY target/wildfly.war /opt/wildfly.jar

EXPOSE 8080

# preferIPv4Stack is needed to keep wildfly-thorntail happy
ENTRYPOINT ["java", "-Djava.net.preferIPv4Stack=true", "-jar", "/opt/thorntail.jar"]