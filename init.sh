#!/bin/bash

# Run this on top of a default Ubuntu 14.04 (trusty) server image to install required packages for Jenkins based CI.

sudo apt-get update
# Apache HTTP server required by Jenkins
sudo apt-get -y install apache2
# Java JDK7 requred by Jenkins
sudo apt-get -y install openjdk-7-jdk
# Add Jenkins to apt-get sources list
sudo wget -q -O - https://jenkins-ci.org/debian/jenkins-ci.org.key | sudo apt-key add -
sudo sh -c 'echo deb http://pkg.jenkins-ci.org/debian binary/ > /etc/apt/sources.list.d/jenkins.list'
# Add Docker to apt-get sources list
sudo apt-get -y install apt-transport-https ca-certificates
sudo apt-key adv --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys 58118E89F3A912897C070ADBF76221572C52609D
sudo sh -c 'echo deb https://apt.dockerproject.org/repo ubuntu-trusty main > /etc/apt/sources.list.d/docker.list'
# Update with new apt-get source lists
sudo apt-get update
# Jenkins CI Server
sudo apt-get -y install jenkins
# Source control management
sudo apt-get -y install git
# Email server
sudo apt-get -y install postfix
# Python static analysis
sudo apt-get -y install pylint
# C/C++ static analysis
sudo apt-get -y install cppcheck
# Make
sudo apt-get -y install make
# Docker
sudo apt-get purge lxc-docker
sudo apt-get -y install linux-image-extra-$(uname -r)
sudo apt-get -y install apparmor
sudo apt-get -y install docker-engine

# Linux Build Deps
sudo apt-get install -y patch make gcc wget git unzip kpartx lzop bc dosfstools xz-utils python g++ language-pack-en

# PyLint
sudo apt-get install -y pylint
# Python nose
sudo apt-get install -y python-nose
# Python pip
sudo apt-get install -y python-pip

# node.js
curl -sL https://deb.nodesource.com/setup_6.x | sudo -E bash -
sudo apt-get install -y nodejs npm

# Path variables
export JENKINS_HOME=/var/lib/jenkins

# Let jenkins use sudo
sudo sh -c 'echo jenkins ALL=(ALL) NOPASSWD: ALL > /etc/sudoers'
