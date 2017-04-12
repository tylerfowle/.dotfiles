# .dotfiles
My .dotfiles influenced by the highly popular [holman does dotfiles](https://github.com/holman/dotfiles)


## components

There's a few special files in the hierarchy.

- **bin/**: Anything in `bin/` will get added to your `$PATH` and be made available everywhere.
- **homebrew/install.sh**: This is a list of applications for [Homebrew](http://brew.sh/) and [Homebrew Cask](http://caskroom.io) to install: things like Chrome, 1Password and Spotify and stuff. Might want to edit this file before running any initial setup.
- **topic/\*.zsh**: Any files ending in `.zsh` get loaded into your environment.
- **topic/path.zsh**: Any file named `path.zsh` is loaded first and is expected to setup `$PATH` or similar.
- **topic/completion.zsh**: Any file named `completion.zsh` is loaded last and is expected to setup autocomplete.
- **topic/install.sh**: Any file named `install.sh` is executed when you run `script/install`. To avoid being loaded automatically, its extension is `.sh`, not `.zsh`.
- **topic/update.sh**: Any file named `update.sh` is executed when you run `script/update`. To avoid being loaded automatically, its extension is `.sh`, not `.zsh`.
- **topic/\*.symlink**: Any file ending in `*.symlink` gets symlinked into your `$HOME`. This is so you can keep all of those versioned in your dotfiles but still keep those autoloaded files in your home directory. These get symlinked in when you run `script/bootstrap`.


## install

```sh
git clone https://github.com/tylerfowle/.dotfiles.git ~/.dotfiles
cd ~/.dotfiles
./script/bootstrap
```

## upkeep
`./script/update` will run all `update.sh` files in all topic folders

`dot` is a simple script that installs some dependencies, sets sane macOS
defaults, and so on. Tweak this script, and occasionally run `dot` from
time to time to keep your environment fresh and up-to-date. You can find
this script in `bin/`.

## tmux

tmux will be installed but will be lacking an appropriate font for the 'powerline' theme

install font from here:https://github.com/powerline/fonts/tree/master/Hack

theme is a modified version of powerline block from [tmux-themepack](https://github.com/jimeh/tmux-themepack)


## Terminal theme

Monokai Soda: [osx-terminal-themes](https://github.com/lysyi3m/osx-terminal-themes)
