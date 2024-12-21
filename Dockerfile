FROM alpine:3.17
RUN apk add --no-cache java-cacerts openjdk17-jdk

# Add a spring user to run our application so that it doesn't run as root
RUN addgroup -S spring && adduser -S spring -G spring

# Change to the spring user
USER spring:spring

# Set the working directory in the container
WORKDIR /app

# The application's JAR file
ARG JAR_FILE=target/*.jar

# Copy JAR file into the container
COPY ${JAR_FILE} app.jar

# Expose the application's port (usually 8080)
EXPOSE 8080

# Command to run the application
ENTRYPOINT ["java", "-jar", "app.jar"]
