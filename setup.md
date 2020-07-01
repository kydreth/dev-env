# Setup

## Script

```
This bash shell script will help configure your software development environment

Where will this software deployment be deployed to?
1. Your local computer (press enter)
2. A cloud provider such as AWS, GCP, Azure (press 2, then enter)
Selection: 
  1. Deploying to local computer
    What is your local computer operating system?
      1. I don't what an operating system is
      2. Windows
      3. MacOS
      4. Linux, RHEL/CentOS
      5. Linux, Debian/Ubuntu
      Selection: 
        1. Automated detection of an OS is currently unsupported
        2. Windows selected
          open VirtualBox and login with user/password vagrant/vagrant or type vagrant ssh\n"
        3. MacOS is currently unsupported
        4. Linux, RHEL/CentOS is currently unsupported
        5. Linux, Debian/Ubuntu is currently unsupported
        6. Unknown configuration. Please specify which operating system

  2. Deploying to cloud environment unsupported, this is a planned feature. Supporting providers:
    * Amazon Web Services (AWS): https://aws.amazon.com/
    * Google Cloud Platform (GCP): https://cloud.google.com/gcp/
    * Microsoft Azure: https://azure.microsoft.com/
    
    TODO: while loop, ask for provider, run separate scripts
    Unknown configuration. Please specify where to deploy your software development environment to
```

### setup.sh

main script

### setup.bat

double click option for running PowerShell script setup.ps1

### setup.ps1

run setup.sh while skipping selection for windows.