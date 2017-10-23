###############################################################################
# Brew Cask Applications                                                      #
###############################################################################


e_header "Installing Applications via Brew"

e_arrow "Installing cask and tapping"

brew tap caskroom/drivers

e_arrow "Installing cask apps"

apps=(
	1password                # Password App
	adobe-creative-cloud     # Adobe
	alfred                   # Task Runner
	appcleaner               # App Cleaner
	bartender                # Organize MacOS Bar
	beamer                   # Stream to Chromcast
	ccleaner                 # cleanup tool
	colorsnapper             # Pick Colors on screen
	daisydisk                # Analyze Disk usage
	dash                     # Dev Docs
	dropbox                  # File Cloud
	firefox                  # Browser
	flash-player             # Stupid old flash
	flinto                   # Animation prototyping
	flux                     # Healthy screen colors
	google-chrome            # Browser
	harvest                  # Time tracking
	imageoptim               # Image Optimization
	istat-menus              # CPU & RAM Usage etc
	iterm2                   # Terminal
	kap                      # Screen Capture
	macid                    # Unlock mac via phone etc
	microsoft-office         # MS Office
	postman                  # API Reqeust Tester
	principle                # Animation prototyping
	qlcolorcode              # Quicklook Addon for colored code
	qlimagesize              # Quicklook Addon that shows image size
	qlmarkdown               # Quicklook Addon for Markdown
	qlstephen                # Quicklook Addon for Plain files
	quicklook-csv            # Quicklook Addon for CSV
	quicklook-json           # Quicklook Addon for JSON
	recordit                 # Quick Screen capture
	sequel-pro               # DB managment
	sketch                   # Design tool
	skype                    # Communication
	slack                    # Communication
	sonos                    # Speaker control
	soundnode                # Soundcloud Desktop App
	sourcetree              # Git Management
	spectacle                # Window management with keys
	spotify                  # Sound App
	sublime-text             # Coding editor
	teamviewer               # Remote control
	torbrowser               # Browser
	transmit                 # FTP browser
	utorrent                 # Torrent
	vagrant                  # Virtual machine
	virtualbox               # Virtual machine
	vlc                      # Video player
)

for app in "${apps[@]}"; do
    brew cask install --appdir="/Applications" "${app}"
done

brew cask cleanup


e_success "Done!"
