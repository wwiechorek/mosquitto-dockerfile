# Docker image to run Mosquitto with User and Password (WebSocket and Socket)

## To change user and password
Edit env vars on Dockerfile: MOSQUITTO_USERNAME and MOSQUITTO_PASSWORD

## To run

```
docker build .
docker images // get last image create
docker run -it -p 9001:9001 -p 1883:188 <image_id>
```

## To test
Use:
http://www.hivemq.com/demos/websocket-client/