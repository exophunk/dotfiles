###############################################################################
# Oh my ZSH                                                                   #
###############################################################################


e_header "Oh my Zsh Config"


# Install oh-my-zsh
e_arrow "Installing oh-my-zsh"
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"


# Copy config
e_arrow "Copy oh-my-zsh config"
cp "configs/.zshrc" "${HOME}/.zshrc"