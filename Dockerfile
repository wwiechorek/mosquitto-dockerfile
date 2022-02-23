FROM eclipse-mosquitto:latest

ENV MOSQUITTO_USERNAME=mqtt
ENV MOSQUITTO_PASSWORD=mqtt

COPY mosquitto.conf /mosquitto/config/mosquitto.conf
COPY entrypoint.sh /

# VOLUME ./data /mosquitto/data
# VOLUME ./log /mosquitto/log

EXPOSE 1883 9001

ENTRYPOINT ["sh", "./entrypoint.sh"]
CMD ["/usr/sbin/mosquitto", "-c", "/mosquitto/config/mosquitto.conf"]
