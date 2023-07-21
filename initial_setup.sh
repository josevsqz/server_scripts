#!/bin/bash

# Function to perform yum update
yum_update() {
    echo "Running yum update..."
    sudo yum update -y
}

# Function to install Perl
install_perl() {
    echo "Installing Perl..."
    sudo yum install -y perl
    echo "Perl has been installed."
}

# Function to prompt for reboot
prompt_reboot() {
    echo "Initial setup has been completed. Press 'Y' to reboot and apply updates, or any other key to skip rebooting."
    read -r answer
    if [ "$answer" == "Y" ] || [ "$answer" == "y" ]; then
        sudo reboot
    else
        echo "Reboot skipped. Please manually reboot later to apply updates."
    fi
}

# Main script logic
yum_update

install_perl

prompt_reboot
