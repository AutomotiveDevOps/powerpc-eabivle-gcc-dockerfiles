#!/usr/bin/env sh
docker build . --file Dockerfile --tag s32ds-power-v1-2:$(git describe --long)
docker build . --file Dockerfile --tag s32ds-power-v1-2:latest
