### Perl


# perlbrew setup
if [ -f ~/perl5/perlbrew/etc/bashrc ]; then
	source ~/perl5/perlbrew/etc/bashrc;
fi
if [ -e $HOME/perl5 ]; then
	export PERL_MB_OPT="--install_base \"$HOME/perl5\"";
	export PERL_MM_OPT="INSTALL_BASE=$HOME/perl5";
fi
