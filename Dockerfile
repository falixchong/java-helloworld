FROM websphere-liberty
ADD ./target/JavaHelloWorldApp.war /config/dropins/JavaHelloWorldApp.war
EXPOSE 9080
