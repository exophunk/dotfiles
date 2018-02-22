###############################################################################
# Brew Cask Fonts                                                             #
###############################################################################


e_header "Installing Fonts via Brew"

e_arrow "Installing cask and tapping"

brew tap caskroom/fonts

e_arrow "Installing cask fonts"

fonts=(
	font-arial
	font-arvo
	font-chivo
	font-clear-sans
	font-comfortaa
	font-comic-neue
	font-crimson-text
	font-droid-sans
	font-fenix
	font-fira-code
	font-fira-sans
	font-inconsolata
	font-jaapoki
	font-lato
	font-lora
	font-open-sans
	font-open-sans-condensed
	font-raleway
	font-roboto
	font-source-code-pro
	font-source-sans-pro
	font-source-serif-pro
)

for font in "${fonts[@]}"; do
    brew cask install "${font}"
done

brew cask cleanup


e_success "Done!"
