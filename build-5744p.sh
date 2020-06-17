#!/usr/bin/env sh

./build.sh

docker build . --file Dockerfile-DEVKIT-MPC5744P --tag s32ds-power-v1-2-devkit-5744p:$(git rev-parse --short HEAD)
docker build . --file Dockerfile-DEVKIT-MPC5744P --tag s32ds-power-v1-2-devkit-5744p:latest
