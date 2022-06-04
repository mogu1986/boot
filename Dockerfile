FROM openjdk:8u212-alpine
COPY ./target/boot.jar /boot.jar
ENV TZ Asia/Shanghai
ENV JAVA_OPTS="-Duser.timezone=Asia/Shanghai -Djava.security.egd=file:/dev/./urandom"
CMD ["/bin/sh", "-c", "java $JAVA_OPTS -jar /boot.jar"]