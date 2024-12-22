# Usar una imagen base de Java
FROM openjdk:17-jdk-slim
# Establecer el directorio de trabajo en el contenedor
WORKDIR /app
# Copiar el archivo JAR y renombrarlo a "app.jar"
COPY target/api_gateway*.jar app.jar

# Exponer el puerto del servicio (opcional si usas server.port=0)
EXPOSE 8080


# Ejecutar la aplicación
ENTRYPOINT ["java", "-jar", "app.jar"]