#!/bin/bash

TIMEOUT=60

function wait_for {
  echo "Waiting up to $TIMEOUT sec for service '$1' to be reachable at port $2 ..."

  for i in `seq $TIMEOUT` ; do
    nc -z "$1" "$2" > /dev/null 2>&1
    
    result=$?
    if [ $result -eq 0 ] ; then
      echo "Reached service '$1' at port $2"
      exit 0
    fi
    sleep 1
  done
  echo "Operation timed out" >&2
  exit 1
}

# parse JDBC string - split by '/', e.g. "jdbc:mysql://db/lportal?..." -> "db"
urlParts=(${LIFERAY_JDBC_PERIOD_DEFAULT_PERIOD_URL//\// })
database=${urlParts[1]}

wait_for "$database" 3306
