#!/usr/bin/env bash
docker kill jchat || true
docker kill springchat || true
docker kill proxy || true

cd jchat && ./run.sh && cd ..
cd springchat && ./run.sh && cd ..
cd proxy && ./run.sh && cd ..

