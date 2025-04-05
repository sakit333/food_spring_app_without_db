# ---------- Build Stage ----------
FROM maven:3.9.5-eclipse-temurin-17 AS builder
# Set working directory
WORKDIR /build
# Copy pom.xml and download dependencies
COPY pom.xml .
RUN mvn dependency:go-offline
# Copy source code
COPY src ./src
# Package the application
RUN mvn clean package -DskipTests
    
# ---------- Run Stage ----------
FROM openjdk:17-jdk-slim
# Set working directory
WORKDIR /app
# Copy JAR from build stage
COPY --from=builder /build/target/*.jar app.jar
# Expose port
EXPOSE 8080
# Run the application
ENTRYPOINT ["java", "-jar", "app.jar"]
        