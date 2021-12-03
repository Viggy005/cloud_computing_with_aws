#!/bin/bash
sudo apt-get update
sudo apt-get upgrade -y
sudo apt-get install nginx -y
systemctl status nginx
sudo apt-get install nodejs -y
curl -sL https://deb.nodesource.com/setup_6.x | sudo -E bash -
sudo apt-get install nodejs -y
sudo npm install pm2 -g
sudo rm -rf /etc/nginx/sites-available/default
#sudo ln -s nginx.conf /etc/nginx/sites-available/
#sudo cp /Users/venkateshvivekandhan/Desktop/devops_99/multi-machine-environment/starter-code /etc/nginx/sites-available/default
sudo cp /home/vagrant/app/default /etc/nginx/sites-available/default
sudo rm -rf .bashrc
sudo cp /home/vagrant/app/.bashrc ./.bashrc
sudo nginx -t
sudo systemctl restart nginx
cd app
cd app
cd seeds
node seed.js
#waite
#cd app
#cd app
#npm install
#npm start
