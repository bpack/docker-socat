Runs a socat process in a docker container. Useful for exposing /var/run/docker.sock as a TCP server especially with Docker for Mac.

Sample use in docker-compose.

```
socat:
    image: bpack/socat
    command: TCP4-LISTEN:2375,fork,reuseaddr UNIX-CONNECT:/var/run/docker.sock
    volumes:
        - /var/run/docker.sock:/var/run/docker.sock
    expose:
        - "2375"
```

Link another container to socat in your docker-compose.yml file and you can set the `DOCKER_HOST=tcp://socat:2375` as an environment variable.
