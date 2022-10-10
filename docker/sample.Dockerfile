FROM adoptopenjdk:11 AS sample-app-build
WORKDIR /app
COPY . ./
RUN ./gradlew --build-cache clean build

FROM adoptopenjdk:11 AS multi-build
WORKDIR /app
COPY . ./
COPY --from=sample-app-build /app/build-cache ./build-cache
RUN ./gradlew --build-cache clean build
CMD /bin/bash

