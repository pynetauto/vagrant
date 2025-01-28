#!/bin/bash

# Exit immediately if a command exits with a non-zero status
set -e

# Define the username and password
USERNAME="linda"
PASSWORD="carter"

# Create the user with a home directory
sudo useradd -m -s /bin/bash "$USERNAME"

# Set the user's password
echo "$USERNAME:$PASSWORD" | sudo chpasswd

# Add the user to the sudo group
sudo usermod -aG sudo "$USERNAME"

# Verify the user creation and privileges
id "$USERNAME"
sudo -l -U "$USERNAME"
