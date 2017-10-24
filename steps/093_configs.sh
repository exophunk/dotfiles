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
