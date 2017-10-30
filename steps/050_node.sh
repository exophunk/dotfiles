###############################################################################
# Node Packages                                                               #
###############################################################################


e_header "Installing Global Node Packages"

packages=(
	gulp
	bower
	eslint
	electron
)

npm install -g "${packages[@]}"


e_header "Set NPM Configs"

# Add npm packages to package.json when installing
npm config set save true


