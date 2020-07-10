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
  read -r -p "Where will this software deployment be deployed to?
1. Your local computer (press enter)
2. A cloud provider such as AWS, GCP, Azure (press 2, then enter)
Selection: " deployment
	case "$deployment" in
		1|'')
			printf "Deploying to local computer\n"

		      	printf "What is your local computer operating system?\n"
			PS3='Selection: '
			select os in "I don't know what an operating system is" Windows MacOS "Linux, RHEL/CentOS" "Linux, Debian/Ubuntu"; do
				local="$REPLY"
				case "$local" in
					1)
						printf "Automated detection of an OS is currently unsupported\n"
					;;
					2)
        printf "Windows selected\n"
        # TODO: detect if vagrant is installed
        # TODO: detect if VirtualBox is installed
        cd virtual-machines/vagrant/centos
        cd base && vagrant up && vagrant package --output base.box && vagrant box add --name base base.box && vagrant halt
        cd ../dev && vagrant up && vagrant package --output dev.box && vagrant box add --name dev dev.box && vagrant halt
        cd ../sandbox && vagrant up
        printf "open VirtualBox and login with user/password vagrant/vagrant or type vagrant ssh\n"
						break
					;;
					3)
						printf "MacOS is currently unsupported\n"
						break
					;;
					4)
						printf "Linux, RHEL/CentOS is currently unsupported\n"
						break
					;;
					5)
						printf "Linux, Debian/Ubuntu is currently unsupported\n"
						break
					;;
				esac
			done
		;;
		2)
    cloud=1
    echo "Deploying to cloud environment unsupported, this is a planned feature. Supporting providers:
* Amazon Web Services (AWS): https://aws.amazon.com/
* Google Cloud Platform (GCP): https://cloud.google.com/gcp/
* Microsoft Azure: https://azure.microsoft.com/
"
    # TODO: while loop, ask for provider, run separate scripts
		;;
		*)
    echo "Unknown configuration. Please specify where to deploy your software development environment to"
		;;
	esac
done
echo ''
