#!/bin/bash

# ----------------------------------------------------------------------------------------------------------------------
#
#   Main
#
# ----------------------------------------------------------------------------------------------------------------------
cd $(dirname "$0")

bash ./RUN-DOCKER-CONTAINER.sh
STATUS=$?

if [ ${STATUS} != 0 ]; then
  exit ${STATUS}
fi

terminator -g ./terminator/config -l default

#bash ./shells/STOP-SIMULATION-CONTAINER.sh
