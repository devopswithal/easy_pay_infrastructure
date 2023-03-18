FROM amazoncorretto:15-alpine-jdk as builder
# First stage : Extract the layers
WORKDIR application
ARG JAR_FILE=target/*.jar
COPY ${JAR_FILE} application.jar
RUN java -Djarmode=layertools -jar application.jar extract

FROM amazoncorretto:15-alpine-jdk as runtime
# Second stage : Copy the extracted layers
COPY --from=builder application/dependencies/ ./
COPY --from=builder application/spring-boot-loader ./
COPY --from=builder application/snapshot-dependencies/ ./
COPY --from=builder application/application/ ./
CMD ["java", "org.springframework.boot.loader.JarLauncher"]