# Multi-business appointment booking

## Descripción del Proyecto

El **Sistema de Reservas y Gestión de Citas Multinegocios** es una aplicación basada en arquitectura de microservicios que permite a diversos negocios (clínicas, salones de belleza, talleres mecánicos, entre otros) gestionar sus servicios, horarios y reservas de citas. Los clientes pueden buscar negocios, consultar disponibilidad y reservar citas de manera sencilla.

Este sistema está diseñado para ser escalable, confiable y fácilmente extensible utilizando herramientas modernas como Spring Boot, RabbitMQ y Eureka.

## Arquitectura del Sistema

El sistema está compuesto por los siguientes microservicios y componentes:

### Microservicios Principales

1. **Servicio de Usuarios**

   - Registro y gestión de usuarios.
   - Roles: cliente y administrador de negocio.
   - Autenticación y autorización (OAuth2/JWT).

2. **Servicio de Negocios**

   - Registro y configuración de negocios.
   - Definición de servicios ofrecidos por cada negocio.

3. **Servicio de Disponibilidad**

   - Configuración y gestión de horarios disponibles.
   - Bloqueo automático de horarios tras realizar una reserva.

4. **Servicio de Reservas**

   - Creación, modificación y cancelación de reservas.
   - Sincronización con la disponibilidad.

5. **Servicio de Notificaciones**

   - Envío de correos o mensajes SMS para confirmar o recordar reservas.

6. **Servicio de Reportes (opcional)**
   - Generación de reportes sobre reservas y disponibilidad.

### Componentes Adicionales

- **API Gateway**: Punto de entrada único para clientes, con funciones de enrutamiento y seguridad.
- **Servidor de Configuración**: Centralización de configuraciones de los microservicios.
- **Eureka Server**: Descubrimiento de servicios para facilitar la comunicación entre microservicios.
- **RabbitMQ**: Sistema de mensajería para eventos y notificaciones asíncronas.

## Tecnologías Utilizadas

- **Backend**: Spring Boot (Microservicios, OpenFeign, Spring Security).
- **Mensajería**: RabbitMQ.
- **Frontend**: Angular (interfaz de usuario).
- **Base de Datos**:
  - MySQL: Datos relacionales (usuarios, negocios, reservas).
  - MongoDB: Logs y configuraciones dinámicas.
- **Infraestructura**:
  - Docker: Contenedorización de los microservicios.
  - Kubernetes: Orquestación y despliegue.

## Funcionalidades Principales

- Registro y autenticación de usuarios.
- Búsqueda de negocios y servicios por ubicación o categoría.
- Configuración de horarios y servicios por parte de los negocios.
- Reservas de citas en horarios disponibles.
- Notificaciones automáticas a clientes y negocios.
- Dashboard para reportes y estadísticas.

## Estructura del Proyecto

```plaintext
appointment booking/
├── api-gateway/
├── config-server/
├── eureka-server/
├── microservices/
│   ├── users-service/
│   ├── businesses-service/
│   ├── availability-service/
│   ├── reservations-service/
│   └── notifications-service/
├── frontend/
└── docker-compose.yml
```

## Requisitos Previos

- JDK 17 o superior.
- Docker y Docker Compose.
- RabbitMQ (se puede configurar con Docker).
- Node.js (para el desarrollo del frontend).

## Instrucciones de Instalación

1. Clonar el repositorio:

   ```bash
   git clone https://github.com/SBenitezL/appointment-booking.git
   cd appointment-booking
   ```

2. Levantar los contenedores con Docker Compose:

   ```bash
   docker-compose up
   ```

3. Acceder al frontend en [http://localhost:3000](http://localhost:3000).

4. Configurar los microservicios en el Servidor de Configuración (en `config-server`).

## Contribución

Si deseas contribuir, crea un _fork_ del repositorio y envía un _pull request_ con tus cambios.

## Licencia

Este proyecto está bajo la Licencia MIT. Consulta el archivo `LICENSE` para más detalles.
