###############################################################################
# Setup                                                                       #
###############################################################################


# clear bash cache
e_arrow 'Clear bash cache'
hash -r


# Install Homebrew
e_header "Installing homebrew"
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)" \
	&& brew doctor \
	&& brew update
e_success "Done!"


# Installing NVM (Node)
e_header "Installing node nvm"
curl -o- https://raw.githubusercontent.com/creationix/nvm/master/install.sh | bash
. ~/.nvm/nvm.sh > /dev/null
nvm install node
nvm alias default node
e_success "Done!"


# Install composer
e_header "Installing composer"
curl -sS https://getcomposer.org/installer | sudo php -- --install-dir=/usr/local/bin --filename=composer

e_arrow 'chown .composer directory'
sudo chown -R $USER $HOME/.composer

e_success "Done!"