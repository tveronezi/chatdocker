#!/usr/bin/env bash
docker kill proxy || true
docker rm proxy || true
docker build -t proxy .
docker run -d -p 80:80 --link=jchat:jchat --link=springchat:springchat --name=proxy proxy
