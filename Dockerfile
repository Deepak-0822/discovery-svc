# Start from an OpenJDK base image
FROM openjdk:21-jdk-slim
 
# Set the working directory
WORKDIR /app
 
# Copy the Spring Boot jar file into the container
COPY target/discovery-server-0.0.1-SNAPSHOT.jar app.jar
 
# Expose the Eureka server port
EXPOSE 8761
 
# Run the jar file
ENTRYPOINT ["java", "-jar", "/app/app.jar"]
