FROM websphere-liberty:latest
USER root
ADD ./target/JavaHelloWorldApp.war /config/dropins/app.war
RUN chown 1001:0 /config/dropins/app.war
RUN chmod 777 /config/dropins/app.war
EXPOSE 9080
USER 1001