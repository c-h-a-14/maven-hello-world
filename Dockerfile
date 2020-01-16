FROM openjdk:8

ARG MY_DIR

RUN echo "my_dir arg is $MY_DIR"

RUN echo 'PWD is $PWD'
RUN ls

ADD target/original-my-app-1.0-SNAPSHOT.jar ./original-my-app-1.0-SNAPSHOT.jar

CMD ["java", "-cp", "original-my-app-1.0-SNAPSHOT.jar", "com.mycompany.app.App"]
