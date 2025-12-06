FROM busybox:1.37.0-musl@sha256:ef13e7482851632be3faf5bd1d28d4727c0810901d564b35416f309975a12a30
LABEL maintainer="deadnews <deadnewsgit@gmail.com>"

USER nobody:nobody
HEALTHCHECK NONE

CMD ["echo", "Hello, World!"]
