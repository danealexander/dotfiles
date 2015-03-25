# Custom aliases

#ls
alias ls='ls -G'
alias la='ls -lA'
alias lsp='ls -lA@e'


# Easy commands for hidden files
alias showall='defaults write com.apple.finder AppleShowAllFiles -bool true && killall Finder'
alias noshowall='defaults write com.apple.finder AppleShowAllFiles -bool false && killall Finder'

# Download web page
alias wget-page='wget --recursive --no-clobber --page-requisites --html-extension --convert-links --no-parent --no-host-directories'
