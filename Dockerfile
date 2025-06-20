# Use an official OpenJDK runtime as a parent image
FROM openjdk:11-jre-slim

# Set the working directory
WORKDIR /app

# Copy the jar file into the container
COPY target/devops-ci-cd-java-app-1.0.jar app.jar

# Run the application
ENTRYPOINT ["java", "-jar", "app.jar"]

