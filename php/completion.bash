# Set up Bash completion for Composer

# BASH - Mac OSX (with Homebrew "bash-completion")
if [ -f $(brew --prefix)/etc/bash_completion.d/composer ]; then
  symfony-autocomplete composer > $(brew --prefix)/etc/bash_completion.d/composer
  . $(brew --prefix)/etc/bash_completion.d/composer
fi
