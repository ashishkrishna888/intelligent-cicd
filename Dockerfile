FROM eclipse-temurin:17-jdk

WORKDIR /app

COPY target/cicd-app-1.0.jar app.jar

EXPOSE 9090

CMD ["java", "-cp", "app.jar", "com.app.App"]