# Usamos una imagen oficial de Java 17 para el servidor
FROM openjdk:17-jdk-slim

# Copiamos el archivo .jar que compilamos en tu computadora hacia el servidor
COPY target/Bienestar-0.0.1-SNAPSHOT.jar app.jar

# Exponemos el puerto 8080 que es el que usa Spring Boot
EXPOSE 8080

# Comando para encender la aplicación en internet
ENTRYPOINT ["java", "-jar", "app.jar"]