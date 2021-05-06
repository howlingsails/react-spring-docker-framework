#!/usr/bin/env bash

docker compose rm -s -v -f

docker volume prune -f