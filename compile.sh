#!/bin/bash
docker-compose down
docker-compose build
docker-compose up

cp md/file.md .
