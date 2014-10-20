#!/usr/bin/env bash

URL=""
DEFAULT_URL="https://raw.githubusercontent.com/kylesuss/ubuntu-bootstrap/master"

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

    (--postgres)
      POSTGRES=true
      shift
    ;;

    (--nginx)
      NGINX=true
      shift
    ;;

  esac
done

#///////////////////////
#// Get Ruby by Default
#///////////////////////

type ruby >/dev/null 2>&1 || {
  if [ "$URL" = "" ]
  then
    URL="$DEFAULT_URL"
    curl $URL/modules/ruby.sh | bash
  else
    curl $URL/modules/ruby.sh | bash
  fi
}

#///////////////////////
#// Conditional Module Installation
#///////////////////////

type ruby >/dev/null 2>&1 || {
  if [ "$REDIS" = true ]
  then
    curl $URL/modules/redis.sh | bash
  fi
}

type psql >/dev/null 2>&1 || {
  if [ "$POSTGRES" = true ]
  then
    curl $URL/modules/postgres.sh | bash
  fi
}

type nginx >/dev/null 2>&1 || {
  if [ "$NGINX" = true ]
  then
    curl $URL/modules/nginx.sh | bash
  fi
}
