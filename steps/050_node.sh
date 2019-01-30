###############################################################################
# Node Packages                                                               #
###############################################################################


e_header "Installing different node versions"

nvm install v6.3.1
nvm install v6.4.0
nvm install v7.3.0
nvm use default




e_header "Installing Global Node Packages"

packages=(
	gulp
	bower
	# eslint
	# eslint-plugin-vue
	# babel-eslint
	electron
	npm-check-updates
	vue-cli
)

npm install -g "${packages[@]}"


e_header "Set NPM Configs"

# Add npm packages to package.json when installing
npm config set save true




e_header "Copy some global packages to other versions"

nvm use v6.3.1
# nvm reinstall-packages default
npm install -g gulp bower

nvm use v6.4.0
nvm reinstall-packages v6.3.1

nvm use v7.3.0
nvm reinstall-packages v6.3.1

nvm use default