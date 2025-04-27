# Use official OpenJDK image
FROM openjdk:21-jdk-slim

# Set working directory inside container
WORKDIR /app

# Copy built jar file into container
COPY target/discovery-server-0.0.1-SNAPSHOT.jar app.jar

# Expose Eureka server port
EXPOSE 8761

# Run the JAR
ENTRYPOINT ["java", "-jar", "app.jar"]
