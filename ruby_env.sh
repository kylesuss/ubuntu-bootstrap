#!/usr/bin/env bash

URL=""

#///////////////////////
#// Check Args Exist
#///////////////////////

if [ $# -eq 0 ]
then
  echo "A valid URL is required in order to dynamically load modules. See https://github.com/kylesuss/ubuntu-bootstrap for details."
  exit 1
fi

#///////////////////////
#// Set Variables for Args
#///////////////////////

while
  (( $# > 0 ))
do
  key="$1"
  shift
  case $key in

    (-s)
      shift
    ;;

    (-url)
      URL="$1"
      shift
    ;;

    (--redis)
      REDIS=true
      shift
    ;;

  esac
done

#///////////////////////
#// Conditional Loading
#///////////////////////

if [ "$URL" = "" ]
then
  echo "A valid URL is required in order to dynamically load modules. See https://github.com/kylesuss/ubuntu-bootstrap for details."
  exit 1
else
  curl $URL/modules/ruby.sh | bash
fi

if [ "$REDIS" = true ]
then
  curl $REDIS/modules/redis.sh | bash
fi
