###############################################################################
# Config Files                                                                #
###############################################################################


e_header "Copy Config Files"

e_arrow ""


e_arrow "Copy Mackup config"
cp "config/.mackup.cfg" "${HOME}/.mackup.cfg"

e_arrow "Copy Oh My Zsh config"
cp "config/.zshrc" "${HOME}/.zshrc"

e_arrow "Copy Nano config"
cp "config/.nanorc" "${HOME}/.nanorc"
cp ".nano" "${HOME}/.nano"

e_arrow "Copy Homestead config"
cp "config/homestead/after.sh" "${HOME}/workspace/Homestead/after.sh"
cp "config/homestead/.homestead" "${HOME}/.homestead"

e_arrow "Copy Sudoer Config for auto sudo oh homestead startup (when using nfs)"
cp "config/vagrant-nfs-sudoer" "/etc/sudoers.d/vagrant-nfs-sudoer"


e_arrow "Copy Dock config"
/bin/cp -f "config/com.apple.dock.plist" "${HOME}/Library/Preferences"
defaults read "${HOME}/Library/Preferences/com.apple.dock.plist"