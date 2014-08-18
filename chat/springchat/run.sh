#!/usr/bin/env bash
docker kill springchat || true
docker rm springchat || true
docker build -t springchat .
docker run -d  -p 8081:8080 --link=jchat:jchat --name=springchat springchat
