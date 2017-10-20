###############################################################################
# Brew Cask Applications                                                      #
###############################################################################


e_header "Installing Applications via Brew"

e_arrow "Installing cask and tapping"

brew tap caskroom/drivers

e_arrow "Installing cask apps"

apps=(
	1password
	adobe-creative-cloud
	alfred
	appcleaner
	bartender
	beamer
	colorsnapper
	daisydisk
	dash
	dropbox
	firefox
	flash
	flinto
	flux
	google-chrome
	harvest
	imageoptim
	istat-menus
	iterm2
	kap
	macid
	microsoft-office
	postman
	principle
	qlcolorcode
	qlimagesize
	qlmarkdown
	qlstephen
	quicklook-csv
	quicklook-json
	recordit
	sequel-pro
	sketch
	skype
	slack
	sonos
	soundnode
	sourcestree
	spectacle
	spotify
	sublime-text
	teamviewer
	torbrowser
	transmission
	vagrant
	virtualbox
	vlc
)

for app in "${apps[@]}"; do
    brew cask install --appdir="~/Applications" "${app}"
done

brew cask cleanup


e_success "Done!"
