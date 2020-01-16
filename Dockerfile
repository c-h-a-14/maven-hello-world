FROM openjdk:8

ARG MY_DIR

RUN echo "my_dir arg is $MY_DIR"

RUN ls

RUN cd $MY_DIR/../s
RUN echo 'PWD is $PWD'
RUN ls

ADD $MY_DIR../s/target/original-my-app-1.0-SNAPSHOT.jar ./original-my-app-1.0-SNAPSHOT.jar

CMD ["java", "-cp", "original-my-app-1.0-SNAPSHOT.jar", "com.mycompany.app.App"]
