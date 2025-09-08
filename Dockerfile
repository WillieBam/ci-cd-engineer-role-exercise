# Use OpenJDK 8 as the base image
FROM openjdk:8-jdk

# Set the working directory
WORKDIR /app

# COPY FROM source to destination
COPY build/libs/hello-world-java-V1.jar /app/hello-world-java-V1.jar

# Run the application (replace HelloWorld with your actual JAR name if different)
ENTRYPOINT ["java", "-jar", "build/libs/hello-world-java-V1.jar"]
