# VisitAmsterdam

<a href="https://hyp.lucapirovano.com/"><img src="https://img.shields.io/badge/Live%20Demo-00C58E?style=for-the-badge&logo=nuxtdotjs&logoColor=white"/></a>
<a href="https://hyp-docs.vercel.app/"><img src="https://img.shields.io/badge/Docs-1363DF?style=for-the-badge&logo=readthedocs&logoColor=white"/></a>

VisitAmsterdam is the final test of "Hypermedia Web Applications", course of "Master in Computer Science Engineering"
held at Politecnico di Milano (2021/2022).

The project consists in 3 main components:

- **MySQL/MariaDB** (database)
- **Spring Boot** (backend)
- **NuxtJS** (frontend)

## Team Composition and Contribution

- **Luca Pirovano** - MSc Computer Science Engineering Student: code, report, docs
- **Nicolò Sonnino** - MSc Computer Science Engineering Student (EIT Digital HCID): code, report, docs
- **Lucrezia Valentini** - MSc Communication Design: design, report
- **Lorenzo Zane** - MSc Computer Science Engineering Student: code, report

## Database

### ER Diagram

![er-diagram](/frontend/docs/er-diagram.png)
The Entity-Relationship model is described in figure above and contains the following entities:

- **Itinerary**
- **ItineraryTag**
- **Event**
- **PointOfInterest**
- **ServiceType**
- **Service**
- **VisitInfo**
- **Day**
- **EventPicture**
- **PoiPicture**

### MariaDB

MariaDB is an open source relational database management system (DBMS)
that is a compatible drop-in replacement for the widely used MySQL database
technology.

MariaDB is based on SQL and supports ACID-style data processing with guaranteed atomicity, consistency, isolation and
durability for transactions.

Among other features, the database also supports JSON APIs, parallel data
replication and multiple storage engines, including InnoDB, MyRocks, Spi-
der, Aria, TokuDB, Cassandra and MariaDB ColumnStore.

The current deployment uses the stable version 15.1.

## Backend

For sake of standards and application speed we decided to use the Java™
Programming Language, which is one of the most used languages in web and
distributed applications.

![graph-languages](/frontend/docs/languages-graph.jpg)

Of course, there are some positive aspects and drawbacks of using this type
of language.

*Pros:*

- **Speed:** of course, since it is a compiled language, Java permits to have very good performances.
- **Standard:** as shown in figure 33, Java is thede facto standard in enterprise web development and represents a very
  good solution
  for portable applications.
- **Stability:** Java is a mature language that has immensely evolved
  over the years. Hence, it’s more stable and predictable.
- **Object-Oriented:** The object-oriented nature of Java allows developers to create modular programs and write
  reusable codes.
  This saves lots of efforts and time, improving the productivity of
  the development process.
- **Documentation:** the language API is well-documented.

*Cons:*

- High verbosity: with respect to other programming languages
  (such as Python), Java contains a more verbose and less-readable
  syntax.


- High memory consumption: since Java Programs run on top
  of Java Virtual Machine, it consumes more memory.

### Spring

In order to accomplish the requirements, we decided to adopt the Spring
development framework.

Spring is an open source framework, used for RESTful Java application development. It’s built on top of the Java
Enterprise Edition (JEE) and represents
an efficient and modern alternative to the classic Enterprise Java Bean (EJB)
model.

Of course, using a framework means works on a solid base, which is well
tested and documented. In fact, Spring contains a proper paradigm in order
to build web services on its API.

![spring-arch](/frontend/docs/spring.png)

As shown in figure 34, the architecture of Spring is very simple and easy-to-

use.

In fact, it is composed by:

- **Dispatcher Servlet:** its job is to route all the incoming requests to the
  correct Spring controller, which is properly mapped with an appropriate
  annotation. This is done through the severals components of Spring,
  which are HandlerMapping, HandlerAdapter and ViewResolver.
- **Controller:** the controller acts as an interface between the user and
  the services. It catches the requests coming from the dispatcher and
  makes actions relying on what user passed to it.
- **Model:** it contains the application logic about the transfer objects
  (also called DTO) which maps a user input (which is encoded in JSON
  format) and a Java object. The DTOs can also be used in the opposite
  direction (server to client), so they are encoded in JSON format and
  then sent to the client.
- **Services:** they act as an intermediate between the entities (database
  objects) and the controller, containing some useful methods in order to
  manipulate data sent by controllers.
- **Repositories:** they are interfaces that contains the query methods in
  order to fetch data from database. They are managed from Spring engine, and it suffices to specify what to retrieve in
  order to get a response
  object from the DBMS.
- **Entities:** they represent database objects. They are declared with
  @Entity annotation, which maps the object to a database table (or set
  of them). Inside an entity object it is possible to specify constraints
  and foreign references through proper annotations.

Spring Data JPA

Spring Data JPA, part of the larger Spring Data family, permits to easily
implement JPA based repositories. This module deals with enhanced support
for JPA based data access layers. It makes it easier to build Spring-powered
applications that use data access technologies.

Spring Data JPA aims to significantly improve the implementation of data
access layers by reducing the effort to the amount that’s actually needed.

In fact, through services and repositories, interfacing with the database becomes very simple. Useless to say that,
furthermore, the security of the
queries from SQL injection is high, because it is totally managed by Spring.

### RESTful architecture

The RESTful architecture is based on the stateless principle, in which the
server does not contain any information about the state of client, that is
managed directly on client side.

This behavior guarantees less computational load on the server and also a
dynamic attitude of the services.

The application is then intended to be developed through client side programming, which means that all requests and
update of the page are made
on client side.

### Docker

Docker is a set of platform as a service (PaaS) products that use OS-level
virtualization to deliver software in packages called containers.

Docker-Compose exploits Docker’s engine to create a multi-container deployment. Each container, with its respective
settings, is specified in a file called
docker-compose.yml.

Docker was used in order to deploy the final artifact, which is composed by
both backend and frontend, on different docker containers which are connected to the same network bridge, with the aim
of keeping them in a local
network to simplify information exchange and improve security.

### Implementation

Our Spring Boot directory tree is structured as follows:

- **advices**: containing classes responsible to handle 404 urls.
- **config**: containing Spring Boot options such as CORS and encryption.
- **entities**: containing the Entities used with the db.
- **controllers**: containing RestControllers responsible to expose REST APIs.
- **exception**: containing custom exceptions.
- **model**: containing DTOs and enums used to query the db.
- **repositories**: containing JpaRepositories used to craft queries.

This whole setup exposes under {host_url}/ap1/v1/ a series of urls:

- /events.

- /services

- /points-of-interests

- /itineraries

- /tags

- /search

You can test our set of APIs with **Postman** by import the collection called `hyp-collection.json` in the repo root
directory.

## Frontend

The frontend part is realized in NuxtJS 2 (whose architecture is described below), which is written on top of Vue.js
framework.

![nuxt-arch](/frontend/docs/nuxt-schema.png)

NuxtJS enables developers to build Server Side Rendered applications in
which a Node.js server will deliver HTML to the client based on your Vue components (rather than running JavaScript on
the client side). This will
allow for better SEO than traditional RIA applications built using Vue.

Another great advantage of Nuxt is the ability to create a Statically Generated website for your application. This
enables users to publish their application without the need for a server (such as GitHub Pages).

### SEO

We decided to focus on the SEO aspect with simple steps:

- **Head**: for each page we added a title, description and keywords.
- **Sitemap**: we generated a sitemap.xml file with our main "static" pages.
- **Robots.txt**: we used a robots.txt file to minimize crawler effort to index our page.

### Accessibility

On the accessibility side we used contrast ratios compliant to standard guidelines (helping people with disabilities),
we added aria-label to each button to help accessibility tools recognize critical actions on our website.

### Vuex

Vuex is a state management pattern + library for Vue.js applications. It
serves as a centralized store for all the components in an application, with
rules ensuring that the state can only be mutated in a predictable fashion.

Vuex lets users create a custom itinerary through the city of Amsterdam,
by saving locally the single points of interest chosen by them.

### Tailwind

Tailwind CSS is a utility-first CSS framework for rapidly building custom
user interfaces.

It is a highly customizable, low-level CSS framework that gives the programmer all the building blocks needed to build
bespoke designs without any
annoying opinionated styles

Tailwind CSS brings several advantages:

- No more silly names for CSS classes and IDs.
- Minimum lines of Code in CSS file.
- Fully customizable designs to make the components.
- Makes the website responsive.
- Makes the changes in the desired manner.


- CSS is global in nature and if you make changes in the file the property
  is changed in all the HTML files linked to it. But with the help of
  Tailwind CSS we can use utility classes and make local changes.

### daisyUI

daisyUI is a customizable Tailwind CSS component library that prevents
verbose markup in frontend applications. With a focus on customizing and
creating themes for user interfaces, daisyUI uses pure CSS and Tailwind
utility classes, allowing developers to write clean HTML code.

### Leaflet

Leaflet is one of the leading open-source JavaScript library for mobile-friendly
interactive maps.

Leaflet is designed with simplicity, performance and usability in mind. It
works efficiently across all major desktop and mobile platforms, can be extended with lots of plugins, has a beautiful,
easy to use and well-documented
API and a simple, readable source code that is a joy to contribute to.

Leaflet Routing Machine, instead, is an extension of the base Leaflet API
that allows the developer to enable routing between different locations in the
same map, by using the Tom-Tom™ Street APIs.

### Implementation

Our NuxtJS directory tree is structured as follows:

- **assets**: containing css classes (tailwind), fonts and js global variables.
- **components**: containing both icons and main elements used in our pages.
- **docs**: containing website documentation, deployed with Vue Styleguidist.
- **layouts**: containing a default one, an error one and a custom one for the index page.
- **pages**: containing all the pages of the website organized by routes.
- **static**: containing all static content compressed and optimized (webp).
- **store**: containing Vuex files for custom itinerary feature.
- **styleguide**: containing Vue Styleguidist files to customize docs style.

Follow the whole docs [here](https://hyp-docs.vercel.app/) to see components docs in-depth.

## Additional Features

For the sake of completeness, other functionalities were implemented with
respect to the original specifications. A brief description of them can be
found in the following paragraphs.

### Search

A mechanism of search was implemented on backend side.

It receives several query parameters on the search to be performed, and
conducts a search on all the possible events, point of interests, services and

itineraries.

Once completed, it returns the results to the client side, specifying the different categories in different JSON
objects. The client then renders the results
to the end user, letting him also to filter them by type (Events, Itineraries,
etc).

### Custom Itinerary

A custom itinerary is a collection of Points of Interest which is not already
present in the proposed ones.

A user can create a custom itinerary by clicking on the "Add to Itinerary"
button, which is present on every Point of Interest page.

The mechanism of custom itinerary exploits the local storage through a nuxt
plugin called Vuex. It stores the information about the stops added to the
itinerary, and persists them in the storage until the user clears it (by using
the proper functionality on the website).

## Best practises

The team followed NuxtJS core features and best practises:

- **SSR**: we carefully selected components both for server side rendering and client side one, for example the MapItem
  is specified to the client side only. This helps crawler to index the website more easily.

- **Dynamic Routing**: single topic pages all use dynamic routing with slug parameters.

- **Components Auto Import**: we named components following the NuxtJS convention to exploit dynamic import of them.
