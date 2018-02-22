###############################################################################
# Init                                                                        #
###############################################################################

# include utils
for file in utils/*.sh
	do . $file
done


e_header "INIT"


e_header "ZSH and Oh my Zsh Install"

# Install oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
