#!/bin/bash
echo $(date) - Starting validate_service.sh
if [[ ! $(curl -s localhost:80 ]]
then
  echo There was a problem with curl localhost:80
  exit 1
fi
echo $(date) - Finished validate_service.sh
