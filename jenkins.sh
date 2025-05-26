#!/bin/bash
set -e

# Update system packages
sudo apt-get update -y

# Install dependencies
sudo apt-get install -y fontconfig openjdk-17-jdk curl gnupg2 wget

# Create the keyrings directory if not present
sudo mkdir -p /etc/apt/keyrings

# Download and add Jenkins GPG key
sudo wget -O /etc/apt/keyrings/jenkins-keyring.asc https://pkg.jenkins.io/debian-stable/jenkins.io-2023.key

# Add Jenkins apt repository with GPG key reference
echo "deb [signed-by=/etc/apt/keyrings/jenkins-keyring.asc] https://pkg.jenkins.io/debian-stable binary/" | sudo tee /etc/apt/sources.list.d/jenkins.list > /dev/null

# Update package list again after adding Jenkins repo
sudo apt-get update -y

# Install Jenkins
sudo apt-get install -y jenkins

# Enable and start Jenkins service
sudo systemctl enable jenkins
sudo systemctl start jenkins


