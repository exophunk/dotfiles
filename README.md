
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



### Email
- For `ch-dns.net` Emails, add IMAP-prefix "INBOX" to Email Accounts
- Go to Email -> Settings -> Accounts -> Server Settings -> "Erweiterte IMAP Einstellungen"
- Restart Mail

### iTerm
- In Preferences/Profiles/Colors, select "Solarized Dark" as Color Preset

### Open iTerm Button in Finder
- Checkout http://hohonuuli.blogspot.ch/2016/02/iterm2-version-3-open-iterm-here-script.html
- The App is already in `Dropbox (Private)/Configs/open_iterm_from_finder.app`


### Configure homestead/vagrant

Install vagrant, homestead with virtualbox first.

- Run `vagrant box add laravel/homestead` to install homestead
- Make sure previous homestead steps are successful, Homestead repo is installed and Homestead.yaml is correct
- Run homestead successfully first
- Check if dnsmasq works correctly, so your .dev & .test domains are routed
- Then run `vagrant-setup.sh` from your host or `vagrant-commands.sh` directly from the VM to configure homestead box (config and adding additional packages)


### Copy Homestead databases
- run `mysqldump -v -uroot -p --all-databases > workspace/alldb.sql` inside homestead VM to export all databases to the `workspace` folder. (Default homestead pw is `secret`)
- run `mysql -u root -p < workspace/alldb.sql` on new machine (inside homestead VM)


### homestead nginx configs
Add custom nginx-files to ~/.homestead/nginx-configs


### Copy keychains

#### Sequel Pro Example
1. Open Keychain
2. Search for "Sequel Pro" and copy all items
3. Create new keychain and safe it somewhere (eg dropbox)
4. Paste all the items
5. Open the keychain on new machine
6. Unlock the chain and copy back all items from the keychain to "Login/Anmeldung" chain
7. Open  Sequel Pro and go trough the favourites (you migrated them before via Mackup already). Allow all keychain access questions.


## Inspired by

https://github.com/d-simon/dotfiles
https://github.com/necolas/dotfiles
https://gist.github.com/brandonb927/3195465
https://github.com/brandonb927/dotfiles
