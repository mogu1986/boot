FROM openjdk:8u212-alpine
COPY ./target/boot.jar /boot.jar
ENV TZ Asia/Shanghai
CMD ["/bin/sh", "-c", "java $JAVA_OPTS -jar /boot.jar"]