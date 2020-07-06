#!/bin/sh
#python3 /code/service.py &
nodejs index.js &
envoy -c /etc/service-envoy.yaml --service-cluster app
