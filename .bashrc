# Load the shell dotfiles, and then some:
# * ~/.path can be used to extend `$PATH`.
# * ~/.extra can be used for other settings you don’t want to commit.
for file in ~/.{path,bash_prompt,exports,aliases,functions,extra}; do
	[ -r "$file" ] && [ -f "$file" ] && source "$file";
done;
unset file;


if [ -f ~/.bash_aliases ]; then
	. ~/.bash_aliases
fi

if [ -f /etc/bash_completion ] && ! shopt -oq posix; then
	. /etc/bash_completion
fi

if [ -f ~/.git_completion ] && ! shopt -oq posix; then
	. ~/.git_completion
fi

#if [ -f ~/.git_prompt.sh ]; then
#	. ~/.git_prompt.sh
#	export GIT_PS1_SHOWDIRTYSTATE=1
#	export PS1='\w$(__git_ps1 " [git:%s]") 🐻 > '
#fi


export EDITOR="nano"
export SVN_EDITOR="nano"
export PATH="/usr/local/bin:/usr/local/sbin:$PATH"
export MANPATH="/usr/local/share/man:$MANPATH"
export JSTESTDRIVER_HOME=/usr/local/bin



# rvm setup
if [ -e $HOME/.rvm/scripts/rvm ]; then 
  source $HOME/.rvm/scripts/rvm
  PATH=$PATH:$HOME/.rvm/bin
fi

# perlbrew setup
if [ -f ~/perl5/perlbrew/etc/bashrc ]; then
	. ~/perl5/perlbrew/etc/bashrc
fi
if [ -e $HOME/perl5 ]; then
	export PERL_MB_OPT="--install_base \"$HOME/perl5\"";
	export PERL_MM_OPT="INSTALL_BASE=$HOME/perl5";
fi


