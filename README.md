# Java Hello World Sample

This project contains a simple servlet application.

[![Deploy to Bluemix](https://bluemix.net/deploy/button.png)](https://bluemix.net/deploy?repository=https://github.com/IBM-Bluemix/java-helloworld)

## Running the application using the command-line

This project can be built with [Apache Maven](http://maven.apache.org/). The project uses [Liberty Maven Plug-in][] to automatically download and install Liberty from the [Liberty repository](https://developer.ibm.com/wasdev/downloads/). Liberty Maven Plug-in is also used to create, configure, and run the application on the Liberty server. 

Use the following steps to run the application locally:

1. Execute full Maven build to create the `target/JavaHelloWorldApp.war` file:
    ```bash
    $ mvn clean install
    ```

2. Download and install Liberty, then use it to run the built application from step 1:
    ```bash
    $ mvn liberty:run-server
    ```

    Once the server is running, the application will be available under [http://localhost:9080/JavaHelloWorldApp](http://localhost:9080/JavaHelloWorldApp).

Use the following command to run the built application in Bluemix:
    ```bash
    $ cf push <appname> -p target/JavaHelloWorldApp.war
    ```

# Adding JavaHelloWorldApp.war into docker
```
docker pull websphere-liberty
```

```
docker run -d -p 80:9080 --name=app -v $PWD/target/JavaHelloWorldApp.war:/config/dropins/app.war websphere-liberty
```

Dockerfile
```
FROM websphere-liberty
ADD ./target/JavaHelloWorldApp.war /config/dropins/app.war
EXPOSE 9080
```

Build Dockerfile
```
docker build -t app .
```

Run docker image
```
docker run -d -p 80:9080 --name=app app
```
