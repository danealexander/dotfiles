# Custom aliases

# Easier navigation: .., ..., ...., ....., ~ and -
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias .....="cd ../../../.."
alias ~="cd ~" # `cd` is probably faster to type though
alias -- -="cd -"

# Shortcuts
alias dl="cd ~/Downloads"
alias desk="cd ~/Desktop"
alias dt="cd ~/Desktop"
alias docs="cd ~/Documents"
alias doc="cd ~/Documents"
alias drop="cd ~/Dropbox"
alias d="cd ~/Dropbox"
alias gd="cd ~/Google\ Drive"
alias sites="cd ~/Sites"

# shortcuts to local dev sites
alias 244="cd ~/Sites/comm244.dev"
alias 328="cd ~/Sites/comm328.dev"
alias lwp="cd ~/Sites/lwp.dev"
alias rt="cd ~/Sites/redtomatowp.dev"

alias g="git"
alias h="history"
alias j="jobs"


#ls
alias ls='ls -G'
# list with hidden files
alias la='ls -lAF'
# list with extended permissions
alias lsp='ls -lA@e'
# List only directories
alias lsd="ls -lF | grep --color=never '^d'"

# ejecting
alias unmount="diskutil unmount"
alias eject="diskutil eject"


# Enable aliases to be sudo’ed
alias sudo='sudo '

# Get week number
alias week='date +%V'

# Stopwatch
alias timer='echo "Timer started. Stop with Ctrl-D." && date && time cat && date'

# update installed Ruby gems, Homebrew, npm, and their installed packages
alias update='brew update; brew upgrade; brew cleanup; npm install npm -g; npm update -g; sudo gem update --system; sudo gem update'

# IP addresses
alias ip="dig +short myip.opendns.com @resolver1.opendns.com"
alias localip="ipconfig getifaddr en0"

# Flush Directory Service cache
alias flush="dscacheutil -flushcache && killall -HUP mDNSResponder"

# Clean up LaunchServices to remove duplicates in the “Open With” menu
alias lscleanup="/System/Library/Frameworks/CoreServices.framework/Frameworks/LaunchServices.framework/Support/lsregister -kill -r -domain local -domain system -domain user && killall Finder"


# Empty the Trash on all mounted volumes and the main HDD
# Also, clear Apple’s System Logs to improve shell startup speed
alias emptytrash="sudo rm -rfv /Volumes/*/.Trashes; sudo rm -rfv ~/.Trash; sudo rm -rfv /private/var/log/asl/*.asl"

# Disable Spotlight
alias spotoff="sudo mdutil -a -i off"
# Enable Spotlight
alias spoton="sudo mdutil -a -i on"

# PlistBuddy alias, because sometimes `defaults` just doesn’t cut it
alias plistbuddy="/usr/libexec/PlistBuddy"

# Read binary plist in xml
alias plist='plutil -convert xml1 -o /dev/stdout'

# Lock the screen (when going AFK)
alias afk="/System/Library/CoreServices/Menu\ Extras/User.menu/Contents/Resources/CGSession -suspend"
alias bye="afk"

# Hide/show all desktop icons (useful when presenting)
alias hidedesktop="defaults write com.apple.finder CreateDesktop -bool false && killall Finder"
alias showdesktop="defaults write com.apple.finder CreateDesktop -bool true && killall Finder"

# Easy commands for hidden files
alias showall='defaults write com.apple.finder AppleShowAllFiles -bool true && killall Finder'
alias noshowall='defaults write com.apple.finder AppleShowAllFiles -bool false && killall Finder'

# Download web page
alias wget-page='wget --recursive --no-clobber --page-requisites --html-extension --convert-links --no-parent --no-host-directories'

# AutoPKG alias
alias ap='autopkg'

