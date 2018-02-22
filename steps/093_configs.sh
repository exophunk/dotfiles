###############################################################################
# Config Files                                                                #
###############################################################################


e_header "Copy Config Files"

e_arrow ""


e_arrow "Copy Mackup config"
cp "configs/.mackup.cfg" "${HOME}/.mackup.cfg"

e_arrow "Copy Oh My Zsh config"
cp "configs/.zshrc" "${HOME}/.zshrc"

e_arrow "Copy Nano config"
cp "configs/.nanorc" "${HOME}/.nanorc"
cp ".nano" "${HOME}/.nano"

e_arrow "Copy Homestead config"
cp "configs/homestead/after.sh" "${HOME}/workspace/Homestead/after.sh"
cp "configs/homestead/.homestead" "${HOME}/.homestead"

e_arrow "Copy Sudoer Config for auto sudo oh homestead startup (when using nfs)"
sudo cp "configs/vagrant-nfs-sudoer" "/etc/sudoers.d/vagrant-nfs-sudoer"


e_arrow "Copy Dock config"
/bin/cp -f "configs/com.apple.dock.plist" "${HOME}/Library/Preferences"
defaults read "${HOME}/Library/Preferences/com.apple.dock.plist"