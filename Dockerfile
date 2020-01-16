FROM openjdk:8

ARG MY_DIR

RUN echo "my_dir arg is $MY_DIR"

RUN ls

ADD /home/vsts/work/1/drop/my-app/target/original-my-app-1.0-SNAPSHOT.jar ./original-my-app-1.0-SNAPSHOT.jar

CMD ["java", "-cp", "original-my-app-1.0-SNAPSHOT.jar", "com.mycompany.app.App"]
