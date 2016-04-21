#!/bin/bash

# Is docker already installed?
set +e
haveDocker=$(docker version | grep "version")
set -e

if [ ! "$haveDocker" ]; then

  # Required to update system
  sudo yum -y update

  # Download docker rpm
  sudo curl -sSL https://get.docker.com/ | sh

  #start docker
  sudo service docker start
fi
