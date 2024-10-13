FROM maven:3.8.5-openjdk-17 AS build

WORKDIR /app

# Copy only necessary files for building the project
COPY pom.xml .
COPY src ./src

# Run the Maven build
RUN mvn clean package -DskipTests

FROM tomcat:9.0.56-jdk17-openjdk-slim

# Copy the built WAR file to the Tomcat webapps directory
COPY --from=build /app/target/Shopping-Retail-Project.war /usr/local/tomcat/webapps/

EXPOSE 8080
CMD ["catalina.sh", "run"]
