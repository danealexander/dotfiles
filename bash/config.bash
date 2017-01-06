# Make nano the default editor.
export EDITOR="vim";
export SVN_EDITOR="vim";

# Increase Bash history size. Allow 32³ entries; the default is 500.
export HISTSIZE='32768';
export HISTFILESIZE="${HISTSIZE}";
# Omit duplicates and commands that begin with a space from history.
export HISTCONTROL='ignoreboth';

# Prefer US English and use UTF-8.
export LANG='en_US.UTF-8';
export LC_ALL='en_US.UTF-8';

# Highlight section titles in manual pages.
export LESS_TERMCAP_md="${yellow}"
export LESS_TERMCAP_mb="${yellow}"
export LESS_TERMCAP_me="${reset}"
export LESS_TERMCAP_so="${violet}"
export LESS_TERMCAP_se="${reset}"
export LESS_TERMCAP_us="${green}"
export LESS_TERMCAP_ue="${reset}"

# Don’t clear the screen after quitting a manual page.
export MANPAGER='less -X';

# Always enable colored `grep` output.
export GREP_OPTIONS='--color=auto';
