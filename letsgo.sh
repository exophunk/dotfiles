#!/bin/bash

# include utils
for file in utils/*.sh
	do . $file
done

# Set continue to false by default
CONTINUE=false


echo ""
cecho "###############################################" $red
cecho "#              EXOPHUNK DOTFILES              #" $red
cecho "#                                             #" $red
cecho "#        DO NOT RUN THIS SCRIPT BLINDLY       #" $red
cecho "#         YOU'LL PROBABLY REGRET IT...        #" $red
cecho "#                                             #" $red
cecho "#              READ IT THOROUGHLY             #" $red
cecho "#         AND EDIT TO SUIT YOUR NEEDS         #" $red
cecho "###############################################" $red
echo ""
cecho "Have you read through the script you're about to run and " $blue
cecho "understood that it will make changes to your computer? (${reset}${green}y${reset}/${red}n${reset})" $blue




read -r response

if [[ $response =~ ^([yY][eE][sS]|[yY])$ ]]; then
	CONTINUE=true
fi

if ! $CONTINUE; then
	# Check if we're continuing and output a message if not
	cecho "Okay, not running..." $red
	exit
fi


if $CONTINUE; then

	e_header "Okay lets go!"


	# Ask for the administrator password upfront
	sudo -v

	# Keep-alive: update existing `sudo` time stamp until We have finished
	while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &


	# Run all install steps
	for file in steps/*.sh
		do . $file
	done
fi