FROM websphere-liberty:latest
USER root
COPY --chown=1001:0 ./target/JavaHelloWorldApp.war /config/dropins/app.war
EXPOSE 9080
USER 1001