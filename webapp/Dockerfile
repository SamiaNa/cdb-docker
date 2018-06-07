FROM alpine/git as clone
WORKDIR /app
RUN git clone https://github.com/SamiaNa/computer-database.git &&\
	cd computer-database/webapp/src/main/resources &&\
	sed -i 's/localhost/cdbdb/' datasource.properties
 
FROM maven:3.3.9 as build
WORKDIR app/
COPY --from=clone /app/computer-database /app
RUN mvn clean install

FROM tomcat:latest as deploy
COPY --from=build /app/webapp/target/computer-database.war /usr/local/tomcat/webapps
EXPOSE 8080

