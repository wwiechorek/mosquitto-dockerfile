FROM eclipse-mosquitto:latest

ENV MOSQUITTO_USERNAME=mqtt
ENV MOSQUITTO_PASSWORD=mqtt123

COPY mosquitto.conf /mosquitto/config/mosquitto.conf
COPY entrypoint.sh /

VOLUME ./data /mosquitto/data
VOLUME ./log /mosquitto/log

EXPOSE 9001
EXPOSE 1883

ENTRYPOINT ["sh", "./entrypoint.sh"]
CMD ["/usr/sbin/mosquitto", "-c", "/mosquitto/config/mosquitto.conf"]
