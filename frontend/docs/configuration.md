## Docker-Compose (Recommended)

If you decided to deploy via docker/docker-compose, configuration is not needed.

Note if you want to import our db dump you need to place it under `db/` folder ( We strongly recommend you to use our dump to have a working environment out of the box).

If you have a custom dump change the docker-compose line:

```yml
services:
  db:
    volumes:
      - ./db/{SQL_SCRIPT_NAME}.sql:/docker-entrypoint-initdb.d/init.sql
```

and insert your filename in **{SQL_SCRIPT_NAME}**.


Moreover change `frontend/assets/js/constants.js` file and BACKEND_URL variable with the name of your backend service, right below the default case:

```js
export const BACKEND_URL = 'http://backend:8080'
```
## Vanilla

Use the following section to configure/customize each component used in the webapp (backend, frontend, database)

## Database (MySQL) configure

Based on your database selection, create a user to access the schema used in the backend and create the schema (both required for the Spring Boot Config).

Hybernate will generate all the necessary tables.

### Spring Boot Config

In order to specify a database to the backend you need to create `backend/src/main/resources/application.properties` like the following:

```properties

spring.datasource.url=jdbc:mysql://localhost:{DB_PORT}/{SCHEMA_NAME}
spring.datasource.username={DB_USER}
spring.datasource.password={DB_PASSWORD}
spring.jpa.show-sql=true
spring.jpa.database-platform={HYBERNATE_DIALECT}
spring.jpa.generate-ddl=true
spring.jpa.hibernate.ddl-auto=update
spring.jpa.properties.hibernate.dialect={HYBERNATE_DIALECT}
jwt.token.validity=18000
jwt.signing.key=signingkey
jwt.authorities.key=roles
jwt.token.prefix=Bearer
jwt.header.string=Authorization
jwt.secret=signingkey

```

The customizable options are:

- **{DB_PASSWORD}**: the database's user password.

- **{DB_PORT}**: the database's port to listen to.

- **{DB_USER}**: the database's user, it needs read rights to the provided schema.

- **{HYBERNATE_DIALECT}**: the hybernate dialect based on the type of database, for MySQL => `org.hibernate.dialect.MySQL8Dialect``

- **{SCHEMA_NAME}**: the schema name.

## NuxtJS Config

Change under `frontend/assets/js/constants.js` the **BACKEND_URL** variable with the URL of the backend, in a basic implementation it will be **http://localhost:8080**
