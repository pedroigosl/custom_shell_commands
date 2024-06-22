#!/bin/bash

echo "#### Installing custom commands ####"

echo "Copying directory into home"
cp -R ./ ~/custom_commands

echo "Updating .profile with new path"
echo "" >> ~/.profile
echo "# custom commands" >> ~/.profile
echo export "PATH=\$PATH":\$HOME/custom_commands/scripts"" >> ~/.profile

echo "Giving permissions to scripts..."
for entry in ~/custom_commands/scripts/*
do
	echo "    Execute permission given to $entry"
	chmod +x "$entry"
done

echo "Activating scripts on this terminal"
. ~/.profile

echo "#### Custom commands installed ####"

echo "Reboot needed for global use"
 
shutdown -r 1
read -n 1 -s -p "To cancel reboot, press any key " key
shutdown -c
echo 
echo "Reboot stopped. To use custom commands as default, reboot the system"
