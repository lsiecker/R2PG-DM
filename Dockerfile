FROM openjdk:21

# Set the working directory
WORKDIR /app

# Copy the jar file to the working directory
COPY java-project/target/r2pgdm-1.0.jar app.jar

# Run the jar file
CMD ["java", "-jar", "app.jar"]