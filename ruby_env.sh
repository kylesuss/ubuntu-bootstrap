#!/usr/bin/env bash

sudo apt-get update
sudo apt-get install curl git

. modules/ruby.sh
. modules/redis.sh