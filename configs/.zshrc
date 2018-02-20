
# Path to your oh-my-zsh installation.
export ZSH=/Users/exophunk/.oh-my-zsh

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

export PATH="$PATH:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/sbin"
export HOMEBREW_CASK_OPTS="--appdir=/Applications"
export HOMEBREW_GITHUB_API_TOKEN="YOUR_GITHUB_TOKEN"
export LANG=de_CH.UTF-8

#zsh-nvm options
export NVM_AUTO_USE=true
export NVM_LAZY_LOAD=true

# plugins to load
plugins=(
	bower
	brew
	brew-cask
	common-aliases
	composer
	dircycle
	dirhistory
	dirpersist
	encode64
	git
	git-extras
	history-substring-search
	last-working-dir
	web-search
	zsh-syntax-highlighting
    sublime
    zsh-nvm
)


source ${ZSH}/oh-my-zsh.sh # load it

# other settings
unsetopt correct_all # disable autocorrect


# NVM (disable direct, slow load, use zsh-nvm)
#export NVM_DIR="${HOME}/.nvm"
#source "$(brew --prefix nvm)/nvm.sh"

# update homebrew
alias brewu='brew update && brew upgrade && brew doctor && brew cleanup --force -s && rm -rf "$(brew --cache)"'

# update everything
alias updateall='softwareupdate -ia && mas upgrade && brew update && brew upgrade && brew cu --all --cleanup --yes && brew doctor && brew cleanup --force -s && rm -rf "$(brew --cache)" && npm --silent --global update'

#show/hidefile switch
alias showFiles='defaults write com.apple.finder AppleShowAllFiles YES; killall Finder /System/Library/CoreServices/Finder.app'
alias hideFiles='defaults write com.apple.finder AppleShowAllFiles NO; killall Finder /System/Library/CoreServices/Finder.app'

#ssh key copy
alias sshkey='cat ~/.ssh/id_rsa.pub | pbcopy && echo "Copied to clipboard."'

#useful
alias copypath="pwd | tr -d '\n' | pbcopy"
alias copyfilelist='ls|pbcopy'
alias jpg2png='for i in *.jpg; do sips -s format png "${i}" --out "${i%jpg}png"; done'
alias png2jpg='for i in *.png; do sips -s format jpg "${i}" --out "${i%png}jpg"; done'


# shortcuts
alias vlc='/Applications/VLC.app/Contents/MacOS/VLC'
alias y7k="cd ~/workspace/y7k"
alias y7kp="cd ~/workspace/y7k/projects"
alias homesteadedit="st ~/workspace/Homestead/Homestead.yaml"
alias zrc="subl ~/.zshrc"
alias zshreload="source ~/.zshrc"
alias nwatch="nvm use && npm run watch"
alias ycl="~/workspace/y7k/plates/cli/y7k"
alias npmi="nvm use && npm install && npm run dev"
alias dnsflush="sudo killall -HUP mDNSResponder"

#git
alias pullboth='git checkout master && git pull && git checkout develop && git pull'
alias pullall='for dir in */; do cd $dir && git pull;  cd .. ; done'
alias devbranchall='for dir in */; do cd $dir && git checkout develop;  cd .. ; done'
alias masterbranchall='for dir in */; do cd $dir && git checkout master;  cd .. ; done'
alias puoa='git push origin --all && git push --tags'

unalias lt

function homestead() {
    ( cd ~/workspace/Homestead && vagrant $* )
}

