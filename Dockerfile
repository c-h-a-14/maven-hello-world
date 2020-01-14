FROM openjdk:8

ARG DIR

RUN echo "dir arg is $DIR"

ADD $DIR/original-my-app-1.0-SNAPSHOT.jar ./original-my-app-1.0-SNAPSHOT.jar

CMD ["java", "-cp", "original-my-app-1.0-SNAPSHOT.jar", "com.mycompany.app.App"]
