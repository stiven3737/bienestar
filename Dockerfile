# --- PASO 1: Compilar la aplicación en internet ---
FROM maven:3.8.4-openjdk-17-slim AS build
COPY . .
RUN chmod +x mvnw && ./mvnw clean package -DskipTests

# --- PASO 2: Crear la imagen final ligera para correr el proyecto ---
FROM eclipse-temurin:17-jdk-alpine
COPY --from=build target/Bienestar-0.0.1-SNAPSHOT.jar app.jar
EXPOSE 8080
ENTRYPOINT ["java", "-jar", "app.jar"]