FROM busybox:1.37.0-musl@sha256:254e6134b1bf813b34e920bc4235864a54079057d51ae6db9a4f2328f261c2ad
LABEL maintainer="deadnews <deadnewsgit@gmail.com>"

USER nobody:nobody
HEALTHCHECK NONE

CMD ["echo", "Hello, World!"]
