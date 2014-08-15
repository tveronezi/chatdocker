#!/usr/bin/env bash
docker kill springchat || true
docker rm springchat || true
docker build -t springchat .
docker run -d --link=jchat:jchat --name=springchat springchat
