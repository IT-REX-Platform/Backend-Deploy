# Docker-Compose configuration

## Prerequisites

Adjust your hosts file (/etc/hosts under Linux, C:\Windows\System32\drivers\etc\hosts under Windows) to include the following entries:

```
127.0.0.1	keycloak
127.0.0.1	jhipster-registry
127.0.0.1	minio

```

## Usage

Launch all your infrastructure as Docker containers by running: `docker-compose -f launch_for_services_inside_docker.yml up -d`.
For debugging and development you might want to only set up the environment for your services to run locally on your host machine.
To do so, run: `docker-compose -f launch_for_services_outside_docker.yml up -d` and then launch the Gateway and your microservices 
through IntelliJ / Gradle.

## Configured Docker services

### Service registry and configuration server:

- [JHipster Registry](http://localhost:8761)

### Applications and dependencies:

- Gateway (gateway application)
- Gateway's postgresql database
- CourseService (microservice application)
- CourseService's postgresql database
- MediaService (microservice application)
- MediaService's postgresql database

### Additional Services:

- [Keycloak server](http://localhost:9080)
- [MinIO server](http://localhost:8087)
