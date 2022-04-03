# Multistage build
A very useful development for Docker builds.

## The rationale
Keeping image sizes small is a real obsession among Docker users. Before multi-stage builds it was hard to do. You'd have to build your system and also ensure that you remove any build-time-only tools from the output image, and do it all in the same layer (otherwise removing the tools only increase the layer's size). There's some strategies to help though:

* [[removing-package-manager-cache]]
* [[single-run-instruction]]

## The solution
A multi-stage build allows separating a build into several stages, where a later stage can `COPY` any result from the previous one into its output. However, the final, useful image is only the latest stage, therefore, you can have an stage that builds all of your application, and only copy the output to the latest stage.

## The execution
Several stages are separated by different `FROM` instructions. In multi-stage builds, `FROM` instructions are allowed to use the `AS` keyword to alias the layer

## Example
```docker
FROM node:latest AS build-frontend
WORKDIR /src/frontend
RUN npm install
RUN npm run build

FROM maven:latest AS build-backend
WORKDIR /src/backend
RUN mvn package

FROM java:8-jdk-alpine AS production
WORKDIR /build
COPY --from=build-frontend /src/frontend/build .
COPY --from=build-backend /src/backend/target/app.jar .
ENTRYPOINT [ "java", "-jar", "app.jar"]
```
