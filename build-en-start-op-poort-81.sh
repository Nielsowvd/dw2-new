#!/bin/bash
docker build -t demo-site:latest .
docker container rm -f demo-site-container 2>/dev/null
docker run -dt --name demo-site-container -p 81:80 demo-site:latest
