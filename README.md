# cloud_computing_with_aws
## what is cloud compuitng?
- Cloud computing is the on-demand availability of computer system resources, especially data storage and computing power, without direct active management by the user.
## what are the benifits of cloud computing?
- minimise any downtime
- scale up and scale dwon really quickly
- cost effective(reduced capital investment)
- lesser operational issues
- etc
## who is using cloud compuitng in IT tech?
- netflix (aws)
- most of the apps on our smartphone
- git hub
- etc
##  what is Iaas? infrastructre as a service
- Iaas is a cloud computing offering in which a vendor provides users access to computing resources such as storage, networking, and servers
## what is Paas? Platform as a service
- Paas is a cloud computing model where a third-party provider delivers hardware and software tools to users over the internet. Usually, these tools are needed for application development. A PaaS provider hosts the hardware and software on its own infrastructure.
## what is Saas? Software as a service
- SaaS is a software licensing model, which allows access to software mostly on a subscription basis using external servers. SaaS allows each user to access programs via the Internet, instead of having to install the software on the user's computer.
## what is AWS? Amazon Web Services
- AWS is the most widly used cloud serivce provider
- it works on a pay as you model( we oly pay for resources when we use them)
## key benifts of using AWS?
- high avaiability
- scalability
- security
- managed IT services are avaiable
# AWS EC2 running app and able to acess it
## push directory from local host to remote host
- rsync -avzh -e "ssh -i eng99.pem" /Users/venkateshvivekandhan/desktop/app ubuntu@ec2-3-250-190-143.eu-west-1.compute.amazonaws.com:/home/ubuntu/app2/
# in Ec2
- run provising script to update,upgrade, install nginx, all required dependencies, nodejs with correct version
- set up reverse proxy
- allow port 3000 by editing security group inbound rules(add a rule type: custom TCP, port range:3000, source:custom(0.0.0.0/0),description: allow access to node app on port 3000)

# AWS Services:
## 1) Ec2
- type ec2 in the search bar
- click on launch instance
- OS: select the operating system we want our remote machine to run
- Family: selecte the family we want our machine in(depends on the task we want machine to perform: USE CASE)
- Configure Instance Details: VPC, which Subnet, Auto assign private IP, etc
- Storage: add required storage
- Security group: outbound(allow everything), inbound(allow as per our requirment)
- key pair: select key pair
- launch

## 2) Security Group (we can name it so that we use for further ec2)
- very important to set up properly 
- make sure all required acess are given
- and unwanted access are denied
> OUTBOUND:
- usuaally set to allow everything
> INBOUND:
- SSH from the IP we will be accessing the machine
- HTTP from IP: 0.0.0.0/0 to allow for public access
- HTTP from IP: ::/0 to allow for public acess
- Custom TCP IP:x.x.x.x PORT_RANGE: the port we want to give access to(eg 3000,27017) to allow access to any ports.

## 3) AMI (Amazon Machine Image)
- this takes a snapshot of an ec2's current status(all downloaded softwares, edited files,etc) and can we used to launch an ec2 that will be an identical copy to the ec2 we took a snap shot off
> steps to take AMI:
- we select the instance
- go to actions
- choose image and templates
- select create image
> Fill in
- image name
- add volume,tags
- click create imagne

## 4)Alarm
- select the ec2
- go to actions
- click on monitor and troubleshoot
- click on manage cloud watch alarms
- set up notification message you want it to show up when alarm goes off
- alarm actions: set up action when alarm goes off
- alarm threshold : metric for the alarm
- click on create

## 5) SNS (simple notification service)
- type sns in search and click into it
- goto subscriptions
- click on create subscription
- Topic ARN: choose the alarm yu have created
- protocol: choose the protocol(email,sms,etc)
- end point: email or phone number where to send the notification
- confirm subscription from our side
- click on create subscription
- you will recieve notification when your alarm triggers 

