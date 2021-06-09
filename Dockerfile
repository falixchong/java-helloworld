FROM websphere-liberty
ADD ./target/JavaHelloWorldApp.war /config/dropins/app.war
EXPOSE 9080
