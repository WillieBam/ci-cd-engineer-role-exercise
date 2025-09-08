# Use OpenJDK 8 as the base image
FROM openjdk:8-jdk

# Set the working directory
WORKDIR /app

# Copy Gradle wrapper and build files
COPY gradlew gradlew.bat build.gradle settings.gradle ./
COPY gradle/ ./gradle/

# Copy source code
COPY src/ ./src/

# Build the application (creates a JAR in build/libs)
RUN ./gradlew build --no-daemon

# Expose port (change if your app uses a different port)
EXPOSE 8085

# Run the application (replace HelloWorld with your actual JAR name if different)
CMD ["java", "-jar", "build/libs/hello-world-java-V1.jar"]
