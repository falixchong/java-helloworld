FROM websphere-liberty:21.0.0.5-full-java8-ibmjava
ADD ./target/JavaHelloWorldApp.war /config/dropins/app.war
EXPOSE 9080