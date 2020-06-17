#!/usr/bin/env sh
docker build . --file Dockerfile --tag s32ds-power-v1-2:latest --tag s32ds-power-v1-2:$(git describe --dirty --tags)
