###############################################################################
# Brew Utilities                                                              #
###############################################################################


e_header "Installing Utilities via Brew"

binaries=(
    ansiweather        # Weather information
    coreutils          # macOS coreutils is outdated
    cpulimit           # Limits cpu usage of processes
    dnsmasq            # Auto DNS config for dev in /etc/hosts
    fcrackzip          # Crack zip passwords
    ffmpeg             # video manipulation
    figlet             # text to ascii art
    git                # git version control
    git-flow           # git flow addon
    graphicsmagick     # image manipulation
    homebrew/php/php71-mcrypt # mcrypt for php 7.1 on macos sierra (needed for laravel composer sometimes)
    httpie             # rest http request sender
    hub                # improved github commands
    jp2a               # jpeg to ascii
    m-cli              # macOS cli tool
    mackup             # app & os configuration backup tool
    nano               # terminal editor
    nginx              # Webserver (for valet)
    nmap               # network tools
    php                # brew based php
    rename             # renaming tool
    s3cmd              # S3 Manager
    speedtest-cli      # speed tester
    sudolikeaboss      # 1password passwords directly in iTerm2
    tree               # show directory as tree
    webkit2png         # screenshot fulllength websites to png
    wifi-password      # show password of current wifi
    youtube-dl         # download youtube vid
)

brew tap ravenac95/sudolikeaboss

for binary in "${binaries[@]}"; do
  brew install "${binary}"
done

brew install imagemagick --with-webp
brew install yarn --without-node

brew link --overwrite php

brew cleanup

e_success "Done!"