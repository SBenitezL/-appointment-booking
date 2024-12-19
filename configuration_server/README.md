# Configuration Server

Servidor de configuración global que almacena la información de los microservicios, tales como claves de acceso la base de datos o conexión con una instancia de rabbitmq.

> [!NOTE]
> para ejecutar correctamente el Dockerfile debe ejecutar el commando:
>
> ```sh
>    mvn clean package -DskipTests
>    docker build -t config-server .
>
> ```
