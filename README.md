# CI_Server
Configuration scripts for continuous integration

## Server Initialization
1. Install Ubuntu 14.04 (trusty) server image and SSH into machine.
2. run ```sudo apt-get update```
2. run ```sudo apt-get -y install git```
3. run ```git clone https://github.com/PumpkinSpace/CI_Server.git```
4. run ```chmod 777 CI_Server/init.sh```
5. run ```./CI_Server/init.sh```
6. accept the default values for Postfix

## Jenkins Initial Setup
1. Point browser to http://your-ci-server-host.com:8080
2. Go through steps to unlock Jenkins
3. Chose 'Select plugins to install'
4. Unselect all plugins and then select the following plugins:
  - GitHub plugin
  - Embeddable Build Status Plugin
  - Mailer Plugin
5. Create admin user

## Jenkins Job Setup
