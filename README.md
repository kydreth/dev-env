# dev-env is a development sandbox using Vagrant, VirtualBox for Windows, MacOS and Linux

## dev-env Quick Start
This will initialize a software development environment on your computer or in the cloud.
To get started with minimal instruction, run:

### Linux/MacOS/Windows
* Install VirtualBox ([Linux](https://www.virtualbox.org/wiki/Linux_Downloads) | [MacOS](https://download.virtualbox.org/virtualbox/6.1.18/VirtualBox-6.1.18-142142-OSX.dmg) | [Windows](https://download.virtualbox.org/virtualbox/6.1.18/VirtualBox-6.1.18-142142-Win.exe))
* [Install Vagrant](https://www.vagrantup.com/docs/installation)
* Linux/MacOs: open up the terminal application, [install git](https://git-scm.com/book/en/v2/Getting-Started-Installing-Git)
* Windows: [install git with git bash](https://git-scm.com/download/win), then open git bash
```shell script
vagrant plugin install vagrant-vbguest
git clone https://github.com/kydreth/dev-env.git
cd dev-env/virtual-machines/ubuntu
vagrant up

```

## Table of Contents

## Introduction

This git repository contains a modern software development tech stack.
It's a living document that will be continuously updated and include competing technologies when appropriate.
It will help someone start developing, be reference for senior developers, be something in-between for everyone else.

## Overviews

The following overviews will discuss the technologies, processes, and roles used.
They will deep dive into Spotlights as well.

* Concepts
    * Intro to Programming
    * Data Structures
    * Algorithms
    * Processes
        * DevSecOps
        * Continuous Integration / Continuous Delivery (IBM/RedHat)
        * Model View Controller (MVC)
    * Development Environment
* Career Paths
    * Full Stack Software Development
        * Front-End
            * Web Development
            * Application Development
            * Mobile Development
            * Game Development
        * Back-End
        * Database
        
        * Infrastructure
            * Cloud Engineering
            * Networking
            * Data Center Technician
    * Data Science
    * Security

### Spotlights

Spotlights are a deep dive on specific technologies.
They include detailed reviews, and hands on examples.

* Languages
    * NodeJS
        * AngularJS (Google)
        * ReactJS (Facebook)
    * Java (IBM/RedHat)
    * Python (Conda)
    * C++ (Unreal)
* Technologies
    * Docker (Docker)
    * Elastic Stack (Elastic)
    * Git (GitHub/GitLab)
    * Jenkins (CloudBees)
    * Kubernetes (D2iQ)
    * PostgreSQL (EnterpriseDB)
    * Unreal Engine (Unreal)
* Operating Systems
  * Linux (IBM/RedHat)
    * systemd
  * Windows (Microsoft)
* Cloud Providers
    * AWS (Amazon)
    * GCP (Google)
    * Azure (Microsoft)
