## Docker Compose deploy (Recommended)

Install [**Docker**](https://docs.docker.com/get-docker/) and [**Docker Compose**](https://docs.docker.com/compose/install/).

After configuring the `docker-compose.yml` run:

```bash
docker-compose up -d
```

wait 2 mins and check [http://localhost:3000](http://localhost:3000).

## Vanilla

In order to replicate our environment and run the project locally you need a set of requirements:

- [Java 17](https://www.oracle.com/java/technologies/javase/jdk17-archive-downloads.html)
- [Node LTS](https://nodejs.org/en/)
- [MySQL Server](https://dev.mysql.com/downloads/)

After the installation of these tools we can move on with the setup of each one of them.

### MySQL

Create a user with root access and a schema (required later, save its name).

### Spring Boot (Backend)

Create a file named `application.properties` under `backend/assets/main/resources` with the following template:

```properties

spring.datasource.url=jdbc:mysql://localhost:{DB_PORT}/{SCHEMA_NAME}
spring.datasource.username={DB_USER}
spring.datasource.password={DB_PASSWORD}
spring.jpa.show-sql=true
spring.jpa.database-platform=org.hibernate.dialect.MySQL8Dialect
spring.jpa.generate-ddl=true
spring.jpa.hibernate.ddl-auto=update
spring.jpa.properties.hibernate.dialect=org.hibernate.dialect.MySQL8Dialect
jwt.token.validity=18000
jwt.signing.key=signingkey
jwt.authorities.key=roles
jwt.token.prefix=Bearer
jwt.header.string=Authorization
jwt.secret=signingkey

```

Changed the following:

- **{DB_PASSWORD}**: the database's user password previously created.

- **{DB_PORT}**: the database's port to listen to.

- **{DB_USER}**: the database's user previously created.

- **{SCHEMA_NAME}**: the schema previously created.

### NuxtJS (Frontend)

Under the frontend directory, run the following in a terminal app:

```bash
npm install
```

Define the backend url under `frontedn/assets/js/constants.js`, in our example it would be the following:

```js
export const BACKEND_URL = 'http://localhost:8080'
```

Wait it to finish and now you can choose two types of deployment:

- **dev**: run `npm run dev`
- **production**(SSR): run first `npm run build` and right after **npm run start**

Both commands will compile