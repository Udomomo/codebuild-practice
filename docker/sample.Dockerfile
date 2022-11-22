# syntax=docker/dockerfile:1

FROM adoptopenjdk:11 AS sample-app-build
WORKDIR /app
RUN --mount=type=bind,target=./,rw ./gradlew --build-cache clean build

FROM adoptopenjdk:11 AS multi-build
WORKDIR /app
COPY --from=sample-app-build /root/.gradle/caches /root/.gradle/caches
RUN --mount=type=bind,target=./,rw ./gradlew --build-cache clean build
CMD /bin/bash

