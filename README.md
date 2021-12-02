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
