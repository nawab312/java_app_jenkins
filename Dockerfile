FROM openjdk:11-jre-slim

#Set the working dir inside the container
WORKDIR /app

#Copy the Spring Boot Application JAR file to Container
COPY target/myapp*.jar /app/myapp.jar

#Expose the port on which app will run
EXPOSE 8083

#Command to run the jar file
ENTRYPOINT ["java", "-jar", "/app/myapp.jar"]
