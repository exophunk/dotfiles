###############################################################################
# Brew Cask Fonts                                                             #
###############################################################################


e_header "Installing Fonts via Brew"

e_arrow "Installing cask and tapping"

brew tap caskroom/fonts

e_arrow "Installing cask fonts"

fonts=(
	font-clear-sans
	font-fira-code
	font-fira-sans
	font-inconsolata
	font-lato
	font-open-sans
	font-open-sans-condensed
	font-roboto
	font-source-code-pro
	font-source-sans-pro
	font-source-serif-pro
	font-droid-sans
)

for font in "${fonts[@]}"; do
    brew cask install "${font}"
done

brew cask cleanup


e_success "Done!"
