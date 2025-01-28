#!/usr/bin/env bash

# Install Apache Web Server
sudo apt update -y
sudo apt install -y apache2

# Start Apache and set it to run at boot
sudo systemctl start apache2
sudo systemctl enable apache2

# Create a sample index.html file
echo "<html><body><h1>G'day mate!</h1></body></html>" | sudo tee /var/www/html/index.html

# Restart Apache to serve the new index.html file
sudo systemctl restart apache2
