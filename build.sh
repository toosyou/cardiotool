#!/bin/bash

# build the web
(cd MIPLab-Webapp && docker build . -t writerwriter/cardio_web:latest) &

# build the api
(cd cardio_api && ./build.sh) &

wait

# combine builds
docker build . -t toosyou/cardiotool:latest