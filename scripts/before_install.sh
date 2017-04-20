#!/bin/bash
echo $(date) - Starting before_install.sh
if [[ ! $(which docker) ]]
then
  echo Installing docker
  sudo apt-get update
  sudo apt-get -y upgrade
  sudo apt-get install linux-image-extra$(uname -r)
  sudo apt-key adv --keyserver hkp://pgp.mit.edu:80 --recv-keys 58118E89F3A912897C070ADBF76221572C52609D
  echo "deb https://apt.dockerproject.org/repo ubuntu-trusty main" | sudo tee /etc/apt/sources.list.d/docker.list
  sudo apt-get update
  sudo apt-get install docker-engine
  echo Run sudo nano /etc/default/ufw and replace DEFAULT_FORWARD_POLICY=\"DROP\" with DEFAULT_FORWARD_POLICY=\"ACCEPT\"
  echo Then run sudo ufw reload
else
  echo Docker already installed
fi
echo $(date) - End of before_install.sh
