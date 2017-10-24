
# Path to your oh-my-zsh installation.
export ZSH=/Users/z/.oh-my-zsh

# Uncomment the following line to change how often to auto-update (in days).
export UPDATE_ZSH_DAYS=3

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
HIST_STAMPS="dd.mm.yyyy"

# oh-my-zsh
ZSH=${HOME}/.oh-my-zsh # config dir
DISABLE_UPDATE_PROMPT=true # auto-update without prompting
ZSH_THEME="af-magic" # set name of the theme to load (in ~/.oh-my-zsh/themes/)

# plugins to load
plugins=(
	brew
	brew-cask
	git
	git-extras
	history-substring-search
	zsh-syntax-highlighting
	bower
	composer
	common-aliases
	dircycle
	dirhistory
	dirpersist
	encode64
	last-working-dir
	web-search
    sublime
)

source ${ZSH}/oh-my-zsh.sh # load it


# other settings
unsetopt correct_all # disable autocorrect

#export PATH="/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin"
#export PATH="/usr/local/bin:/usr/local/sbin:$PATH:/usr/local/opt/ruby/bin:/usr/local/share/npm/bin"
#export PATH=$PATH:~/.composer/vendor/bin
#export PATH=/usr/local/php5/bin:$PATH
#export PATH=/Users/exophunk/.nvm/versions/node/v7.8.0/bin:$PATH
#export PATH=$PATH:~/workspace/y7k/spark-installer
#export GEM_HOME="$(brew --prefix)"
#export LC_ALL=de_CH.UTF-8
#setopt interactivecomments

export HOMEBREW_CASK_OPTS="--appdir=/Applications"
export LANG=de_CH.UTF-8

# NVM
export NVM_DIR="${HOME}/.nvm"
source "$(brew --prefix nvm)/nvm.sh"

# update homebrew
alias brewu='brew update && brew upgrade && brew doctor && brew cleanup --force -s && rm -rf "$(brew --cache)"'

# update everything
alias updateall='softwareupdate -ia && brew update && brew upgrade && brew doctor && brew cleanup --force -s && rm -rf "$(brew --cache)" gem update && npm --silent --global update'

#show/hidefile switch
alias showFiles='defaults write com.apple.finder AppleShowAllFiles YES; killall Finder /System/Library/CoreServices/Finder.app'
alias hideFiles='defaults write com.apple.finder AppleShowAllFiles NO; killall Finder /System/Library/CoreServices/Finder.app'

#ssh key copy
alias sshkey='cat ~/.ssh/id_rsa.pub | pbcopy && echo "Copied to clipboard."'

#useful
alias copypath="pwd | tr -d '\n' | pbcopy"
alias copyfilelist='ls|pbcopy'

#apps
alias vlc='/Applications/VLC.app/Contents/MacOS/VLC'

#folder jumps

alias y7k="cd ~/workspace/y7k"
unalias lt

alias homesteadedit="st ~/workspace/Homestead/Homestead.yaml"

function homestead() {
    ( cd ~/workspace/Homestead && vagrant $* )
}

alias ycl="~/workspace/y7k/y7k-cli/y7k"

alias serve="python -m SimpleHTTPServer 3003"

alias nwatch="nvm use && npm run watch"
