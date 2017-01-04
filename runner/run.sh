#!/bin/bash
set -m

PROC_TYPE=$1
BUILD_URL=$2

wget $BUILD_URL -O /tmp/app.tar 
mkdir /app
tar -xf /tmp/app.tar -C / 

herokuish procfile start $PROC_TYPE &


fg
