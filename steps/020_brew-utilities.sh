###############################################################################
# Brew Utilities                                                              #
###############################################################################


e_header "Installing Utilities via Brew"

binaries=(
	coreutils
    ansiweather
    cpulimit
    fcrackzip
    ffmpeg
    figlet
    git
    graphicsmagick
    httpie
    hub
    jp2a
    m-cli
    mackup
    nmap
    rename
    speedtest-cli
    sudolikeaboss
    tree
    webkit2png
    wifi-password
    youtube-dl
)

brew tap ravenac95/sudolikeaboss

for binary in "${binaries[@]}"; do
  brew install "${binary}"
done

brew install imagemagick --with-webp

brew cleanup

e_success "Done!"