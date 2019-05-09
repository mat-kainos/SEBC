# BDA Training
## [Cloudera Bootcamp (SEBC/Service Enablement BootCamp)](https://university.cloudera.com/instructor-led-training/cloudera-services-enablement-bootcamp)

The following links contain the BootCamp course. Please familiarise yourself with the course and its activities before attending the course. We would recommend studying the latest build of the course available and once familiar with the training, moving on to check up on the changes to the "Challenges" section to get a feel for the end of course exam.

Please share any newer builds of the BootCamp course you may encounter so that we can keep this section up to date and maintain its relevance.

The estimated per-trainee AWS infra costs would be https://calculator.s3.amazonaws.com/index.html#r=IAD&s=EC2&key=calc-5B63EC1D-1C03-4453-B8FD-530710A5EA3E. This is for spinning up a practice cluster on which to prepare for the Bootcamp. Please seek approval for these costs before beginning.

# Raw Bootcamp course.
This section contains links to the pristine version of the course material.

- [Cloudera-Bootcamp Local copy (Oct 2018)](/Cloudera-Bootcamp/SEBC-October2018)
- [Cloudera-Bootcamp live Master for Oct 2018 course](https://github.com/rsiwicki/SEBC)
- [Cloudera-Bootcamp Local copy (Feb 2017)](/Cloudera-Bootcamp/SEBC-February2017)

# Bootcamp with course attendees code.
This section contains links to versions of the course that have been updated by the course attendees and as such will have their notes and how they approached solving the various tasks.
- [Cloudera-Bootcamp Master copy (May 2018)](https://github.com/doddys/SEBC)
- [Cloudera-Bootcamp Local copy (May 2018)](/Cloudera-Bootcamp/SEBC-May2018)
- [Cloudera-Bootcamp Master (Mar 2018)](https://github.com/AleNegrini/SEBC)
- [Cloudera-Bootcamp Local copy (Mar 2018)](/Cloudera-Bootcamp/SEBC-March2018)

# Prerequisites
## Prior to attending, participants must be able to:

    Install/configure a MySQL server
    Create/manage AWS EC2 instances
    Use git and GitHub
    Tune Linux settings, mount disk volumes, recover failed services, adjust network parameters
    Administer YUM repos and Linux packages


# Setup Requirements
    Participants are required to bring a laptop with wireless internet capability (both wifi and wired ethernet options)
    Labs/challenges are run on remote clusters
    Students may connect to company systems to create clusters/run labs; however, instructors must also be able to access to review work
    Participants need a GitHub account for receiving course materials
    Participants need an AWS account
        You'll create 4-5 EC2 instances for your labs.  The latest version of Centos 7 can be used as this is supported by CM & CDH 5.14, which will be used in this course.
    The AWS infrastructure should be setup prior to the course start date.


# AWS Infrastructure Setup
Once the participants have their AWS account they will need to login and ensure their region is set to the one for the AWS costed for the course (i.e. N.Virginia).

## Create 5 EC2 Instances:

Select Services > EC2 > Launch Instance > Select AWS Marketplace > type centos > select centos07 which is the latest version > select continue
select m5.xlarge (4 vCPUs and 16 GB memory) > Next: configure instance details > enter 5 as the number of instances, for auto-assign public ip select - enable
Next: Add Storage > set the size as 60 GB and volume GP2
Next: Add Tags (leave blank)
Next: Configure Security Group - set the source IP as your public IP address for SSH access > Review and Launch > Launch
Create a new key pair and give it a name and download key pair
Select Launch Instances
Select View Instances and wait until they are completed

## Create and assign static IP address:

Create and assign static IP address for each EC2 instance so the same IP address is used (i.e. not assigned different IP address for reboots).
Select Elastic IPs (under Network & Security) > Allocate new address > (leave Amazon pool default as selected) Allocate > close.
Select the new Elastic IP address > Actions > Associate address > select instance > Associate.
Do this for all of the EC2 instances.

## Setup Route Tables:

Select VCP > Route Tables > select route table > Subnet Associates > Edit Subnet associations > select the subnet which each EC2 instances uses and select save.

## Update Security Groups:

Select each EC2 instance > Actions > Networking > Change Security Groups > select default security group > Assign Security Groups
There should be two security groups assigned to each EC2 instance.  This allows us to ping each EC2 instance from each other.

## Setup and test SSH access:

Copy the downloaded pem file to desired location
Open SSH session
Change permission on pem file - using chmod 600
Test access to each EC2 instance using pem file - ssh -i %/path to pem file/%pem file name%.pem centos@%EC2 instance Public DNS name%
Test and ensure ping connections are successful between each instance.

The AWS Name tag of each instance can be updated whenever the nodes have been identified as part of the cluster setup.


Note - please shut down EC2 instances prior to course start date to save credits, when not used.

# Course flow
We will use the following Bootcamp material, similar to the Madrid October 2018 Bootcamp:

- [Cloudera-Bootcamp Gdansk BDA (May 2019)](/Cloudera-Bootcamp/SEBC-May2019)

As the Bootcamp environment is open and collaborative - it is recommended that attendees work in groups of two - four to help and assist each other.

The course will cover the following topics, where the final day will be a three hour challenge:

0)  Intro and Setup

The Bootcamp recommends that participants have knowledge of Cloudera Hadoop.  The following Cloudera Essentials for Apache Hadoop course gives a beneficial overview:

- [Overview of Cloudera Apache Hadoop](https://ondemand.cloudera.com/courses/course-v1:Cloudera+ESS+0/about)

1)  Overview of Bootcamp
2)  Installation
3)  Storage
4)  Resource Management
5)  Using Cloudera Manager
6)  Enterprise Security
7)  Supporting Hadoop Clients
8)  Technical Resources/Troubleshooting
9)  Setup AWS EC2 instances in preparation for challenge
10)  Challenge

The following Tello Board will be used to manage the various tasks:

https://trello.com/b/ptBTJixU/gdansk-bda
