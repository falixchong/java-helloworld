FROM websphere-liberty:latest
USER root
ADD ./target/JavaHelloWorldApp.war /config/dropins/app.war
EXPOSE 9080
USER 1001