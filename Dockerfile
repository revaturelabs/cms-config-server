ENV spring_profiles_active=$SPRING_ENV
ENV EUREKA_URL=$EUREKA_URL
EXPOSE 8888 
COPY target/${JAR_FILE} app.jar
ENTRYPOINT [ "sh", "-c", "java $JAVA_OPTS -Djava.security.egd=file:/dev/urandom -jar /app.jar" ]
