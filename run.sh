#!/bin/bash

docker build -t capybara-test .
xhost +
docker run --rm -e DISPLAY=$DISPLAY -v /tmp/.X11-unix:/tmp/.X11-unix capybara-test
