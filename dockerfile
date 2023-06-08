FROM openjdk:11
COPY ./src /usr/src/myapp
WORKDIR /usr/src/myapp
RUN javac Essai.java
CMD ["java", "Essai"]
