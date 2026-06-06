# Usamos una imagen moderna y pública de Java 17
FROM eclipse-temurin:17-jdk-alpine

# Copiamos el archivo .jar que compilamos en tu computadora hacia el servidor
COPY target/Bienestar-0.0.1-SNAPSHOT.jar app.jar

# Exponemos el puerto 8080
EXPOSE 8080

# Comando para encender la aplicación
ENTRYPOINT ["java", "-jar", "app.jar"]