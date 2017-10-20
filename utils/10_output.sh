###############################################################################
# FORMATED OUTPUT                                                             #
###############################################################################

#!/usr/bin/env bash

# Borrowed from 
# https://natelandau.com/bash-scripting-utilities/
# https://github.com/brandonb927/dotfiles/blob/master/utils.sh

#
# Set Colors
#

bold=$(tput bold)
underline=$(tput sgr 0 1)
reset=$(tput sgr0)

purple=$(tput setaf 171)
red=$(tput setaf 1)
green=$(tput setaf 76)
tan=$(tput setaf 3)
blue=$(tput setaf 38)


#
# Headers and  Logging
#

e_header() { 
    printf "\n${bold}${purple}==========  %s  ==========${reset}\n" "$@" 
}

e_arrow() { 
    printf "➜ $@\n"
}

e_success() { 
    printf "${green}✔ %s${reset}\n" "$@"
}

e_error() { 
    printf "${red}✖ %s${reset}\n" "$@"
}

e_warning() {
    printf "${tan}➜ %s${reset}\n" "$@"
}

e_underline() { 
    printf "${underline}${bold}%s${reset}\n" "$@"
}

e_bold() { 
    printf "${bold}%s${reset}\n" "$@"
}

e_note() { 
    printf "${underline}${bold}${blue}Note:${reset}  ${blue}%s${reset}\n" "$@"
}



cecho() {
 	echo "${2}${1}${reset}"
	return
}