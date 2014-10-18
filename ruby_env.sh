#!/usr/bin/env bash

if [ $# -eq 0 ]
then
  echo "A valid URL with the -s flag in order to dynamically load modules. See https://github.com/kylesuss/ubuntu-bootstrap for details."
  exit 1
fi

curl $1/modules/ruby.sh | bash
curl $1/modules/redis.sh | bash