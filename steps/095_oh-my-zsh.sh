###############################################################################
# Oh my ZSH                                                                   #
###############################################################################


e_header "Oh my Zsh Install"


# Install oh-my-zsh
e_arrow "Installing oh-my-zsh"
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"


# Add zsh-nvm plugin
git clone https://github.com/lukechilds/zsh-nvm ~/.oh-my-zsh/custom/plugins/zsh-nvm