Custom shell commands add-on for Linux

To use custom commands, follow:

	1) Paste command scripts on ./scripts directory. 
	   Filename must be the exact command desired 
	
	2) Run installer on a terminal on this directory with:
		. installer.sh
		
	3) Reboot system to apply changes
	
To test if working, run on a terminal:
	test_custom_commands
	
You may install your scripts manually following the instructions:

	1) Paste custom_commands folder on home directory

	2) Update your path on .profile with:
		export PATH=$PATH":$HOME/custom_commands/scripts"

	3) Give script execute permissions in terminal with:
		chmod +x custom_commands/scripts/<script name>

	4) Reload .profile with:
		. ~/.profile
		
		
This repository ships with 2 commands:

rns (Run and Shutdown) -> Runs commands and then turns PC off afterwards
	To use, run on a terminal:
		rns <your commands>
test_custom_commands -> Prints custom command working confirmation

