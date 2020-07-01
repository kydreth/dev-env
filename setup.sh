#!/bin/bash
printf "This bash shell script will help configure your software development environment\n"

deployment=0
local=0
cloud=0
rhel=0
debian=0
macos=0
windows=0
aws=0
gcp=0
azure=0
while [[ $deployment != '2' ]] && [[ $deployment != '1' ]] && [[ $deployment != '' ]]
do
  read -p "Where will this software deployment be deployed to?
1. Your local computer (press enter)
2. A cloud provider such as AWS, GCP, Azure (press 2, then enter)
Selection: " deployment
  if [[ $deployment -eq '1' ]] || [[ $deployment -eq '' ]]; then
    printf "Deploying to local computer\n"
    while ! [[ "$local" =~ ^(1|2|3|4|5|)$ ]]
    do
      read -p "What is your local computer operating system?
1. I don't what an operating system is
2. Windows
3. MacOS
4. Linux, RHEL/CentOS
5. Linux, Debian/Ubuntu
Selection: " local
      if [ $local -eq '1' ]; then
        printf "Automated detection of an OS is currently unsupported\n"
      elif [ $local -eq '2' ]; then
        printf "Windows selected\n"
        # TODO: detect if vagrant is installed
        # TODO: detect if VirtualBox is installed
        cd virtual-machines/vagrant/centos
        cd base && vagrant up && vagrant package --output base.box && vagrant box add --name base base.box && vagrant destroy -f && rm base.box
        cd ../dev && vagrant up && vagrant package --output dev.box && vagrant box add --name dev dev.box && vagrant destroy -f && rm dev.box
        cd ../sandbox && vagrant up
        printf "open VirtualBox and login with user/password vagrant/vagrant or type vagrant ssh\n"
      elif [ $local -eq '3' ]; then
        printf "MacOS is currently unsupported\n"
      elif [ $local -eq '4' ]; then
        printf "Linux, RHEL/CentOS is currently unsupported\n"
      elif [ $local -eq '5' ]; then
        printf "Linux, Debian/Ubuntu is currently unsupported\n"
      else
        printf "Unknown configuration. Please specify which operating system\n"
      fi
    done

  elif [[ deployment -eq '2' ]]; then
    cloud=1
    echo "Deploying to cloud environment unsupported, this is a planned feature. Supporting providers:
* Amazon Web Services (AWS): https://aws.amazon.com/
* Google Cloud Platform (GCP): https://cloud.google.com/gcp/
* Microsoft Azure: https://azure.microsoft.com/
"
    # TODO: while loop, ask for provider, run separate scripts
  else
    echo "Unknown configuration. Please specify where to deploy your software development environment to"
  fi
done
echo ''
