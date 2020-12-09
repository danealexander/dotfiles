### Set Options
# Automatically change directories
setopt AUTO_CD

# share history across multiple zsh sessions
setopt SHARE_HISTORY
# expire duplicates first
setopt HIST_EXPIRE_DUPS_FIRST 
# do not store duplications
setopt HIST_IGNORE_DUPS
#ignore duplicates when searching
setopt HIST_FIND_NO_DUPS
# removes blank lines from history
setopt HIST_REDUCE_BLANKS

# Correct commands
setopt CORRECT
# Correct all arguments
setopt CORRECT_ALL

# correction prompt
SPROMPT="Correct %F{red}%R%f to %F{green}%r%f [nyae]?"
