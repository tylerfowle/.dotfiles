# .dotfiles

## install

```sh
git clone https://github.com/holman/dotfiles.git ~/.dotfiles
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

tmux will be installed but will be lacking an appropriate font for the 'powerline'

install font from here:https://github.com/powerline/fonts/tree/master/Hack

