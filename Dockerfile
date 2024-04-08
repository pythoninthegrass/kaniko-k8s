# syntax=docker/dockerfile:1.6

FROM ubuntu:jammy-20240227

RUN apt-get update \
    && apt-get install -y --no-install-recommends \
    python3 \
    python3-pip \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

WORKDIR /app

COPY hello.py .

ENTRYPOINT [ "python3" ]
CMD [ "hello.py"]
