# dotfiles
Various configuration files and setup for the way I like things.

Sticks with bash as default shell because that's the MacOS default. Installs newer version of bash and zsh through homebrew but doesn't make them the default.


## modular

Set up to create topics for configurations. Just create a new folder for each area.


## install

Run this:

```sh
git clone https://github.com/danealexander/dotfiles ~/dotfiles
cd ~/dotfiles
scripts/bootstrap
```

This will symlink the appropriate files in `dotfiles` to your home directory.
Everything is configured and tweaked within `~/dotfiles`.

`dot` is a simple script that installs some dependencies. Tweak this script, 
and occasionally run `dot` from time to time to keep your environment fresh and 
up-to-date. You can find this script in `bin/`.


## components

There's a few special files in the hierarchy.

- **bin/**: Anything in `bin/` will get added to your `$PATH` and be made
  available everywhere.
- **topic/\*.bash**: Any files ending in `.bash` get loaded into your
  environment.
- **topic/path.bash**: Any file named `path.bash` is loaded first and is
  expected to setup `$PATH` or similar.
- **topic/completion.bash**: Any file named `completion.bash` is loaded
  last and is expected to setup autocomplete.
- **topic/\*.symlink**: Any files ending in `*.symlink` get symlinked into
  your `$HOME`. This is so you can keep all of those versioned in your dotfiles
  but still keep those autoloaded files in your home directory. These get
  symlinked in when you run `script/bootstrap`.


## local

Any files in the local folder will be sourced or symlinked by bootstrap, but will not 
get added to the git repo. Great for private files or local configurations.

You may also stash your environment variables in ~/.localrc will will be sourced but not included in the git repo.


## todo

* Add preferences for Terminal
* Add preferences for TextMate
* Add preferences for TextWrangler
* Auto Install solarized
* Create install script for each topic
* Create script for optional cask installs


## thanks

A lot of the structure and ideas for this version are from [Zach Holman](https://github.com/holman/dotfiles). I've tried to emulate similar ideas while still using bash.