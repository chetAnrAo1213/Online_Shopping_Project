FROM maven:3.8.5-openjdk-17 AS build

WORKDIR /app

COPY . .  # Copy your project files into the container
COPY ~/.m2 /root/.m2  # Copy local Maven repository to avoid missing dependencies
RUN mvn clean package -DskipTests

FROM tomcat:9.0.56-jdk17-openjdk-slim

COPY --from=build /app/target/Shopping-Retail-Project.war /usr/local/tomcat/webapps/

EXPOSE 8080
CMD ["catalina.sh", "run"]
