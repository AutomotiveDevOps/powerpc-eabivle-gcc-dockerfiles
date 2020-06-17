#!/usr/bin/env bash

./build.sh

docker run -it s32ds-power-v1-2:latest /bin/sh
