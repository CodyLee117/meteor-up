#!/bin/bash

# Is docker already installed?
set +e
haveDocker=$(docker version | grep "version")
set -e

if [ ! "$haveDocker" ]; then

  # Required to update system
  sudo yum -y update

  # Download docker rpm
  sudo curl -O -sSL http://get.docker.com/docker/1.7.0/rpms/centos-6/RPMS/x86_64/docker-engine-1.7.0-0.1.el6.x86_64.rpm

  #install docker
  sudo yum -y --skip-broken localinstall --nogpgcheck docker-engine-1.7.0-0.1.el6.x86_64.rpm

  #start docker
  sudo service docker start
fi
