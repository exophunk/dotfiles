
# Exophunk Dotfiles 

Use to setup new dev workstations

## Usage

1. Go trough all files and adjust to your needs! 
2. Run `init.sh` to install oh-my-zsh. Because this restarts the terminal, it is a separate step.
3. Run `letsgo.sh` to run all tasks.
4. Log in & Sync with Dropbox
5. Run `mackup restore` to restore all app configs
6. Do additonal tasks listed below



## More configurations and things to do


### ssh keys
Copy over ssh keys from old computer (copy `~/.ssh` folder)

### Sourcetree
Start app, accept everything and add github + bitbucket accounts

### Sublime

After syncing your config with mackup, start sublime and make sure package manager is installed (do so by running cmd + shift + p, type "install" and try to install something)

A message should pop up somewhen. When Package Manager works, it will install all packages, settings etc. automatically

### Sourcetree
Open App


### iTerm
- In Preferences/Profiles/Colors, select "Solarized Dark" as Color Preset

### Open iTerm Button in Finder
- Checkout http://hohonuuli.blogspot.ch/2016/02/iterm2-version-3-open-iterm-here-script.html
- The App is already in `Dropbox (Private)/Configs/open_iterm_from_finder.app`


### Configure homestead/vagrant

Install vagrant, homestead with virtualbox first.

Then run `vagrant-setup.sh` from your host or `vagrant-commands.sh` directly from the VM to configure homestead box (config and adding additional packages)

### nginx configs
Add custom nginx-files to ~/.homestead/nginx-configs




## Inspired by

https://github.com/d-simon/dotfiles
https://github.com/necolas/dotfiles
https://gist.github.com/brandonb927/3195465
https://github.com/brandonb927/dotfiles
