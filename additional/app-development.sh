###############################################################################
# App Development                                                             #
###############################################################################


e_header "Installing Mobile App Dev Tools"

e_arrow "Install XCode Commandline Tools"
xcode-select --install


e_arrow "Install Node packages"

nvm use default

packages=(
    ios-deploy
    cordova
)

npm install -g "${packages[@]}"


e_arrow "Install ruby gems"
sudo gem install cocoapods



e_arrow "Installing cask apps"

apps=(
    android-studio
)

for app in "${apps[@]}"; do
    brew cask install --appdir="/Applications" "${app}"
done

brew cask cleanup


e_success "Done!"