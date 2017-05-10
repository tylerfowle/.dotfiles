# Jump to locations
alias cdn='cd ~/Repos/fdp-design-container/projects/cdn'
alias frame='cd ~/Repos/fed-framework'
alias docker='cd ~/Repos/fdp-design-container'
alias sites='cd ~/Sites'
alias repos='cd ~/Repos'

# Other
alias la="ls -Ga"
alias ..="cd .."
alias list="ls -1"
alias sassvars='grep -Rnco "\$.*:" .'
alias editbash="e ~/.bash_profile"
alias editdot="e ~/.dotfiles"
alias editvim="e ~/.dotfiles/vim/vimrc.symlink"
alias vim=nvim

# tag
alias taglist="tag -RNt"
alias ts="taglist|fzf"

alias hangouts="https://hangouts.google.com"

# reload config
alias reload!='. ~/.zshrc'

# gitline - github api script
alias editgitline='e /usr/local/bin/gitline.sh'
alias gitline='/usr/local/bin/gitline.sh'
alias gl='/usr/local/bin/gitline.sh'

# New Projects copy gulp3
alias dup='mkdir html && ditto ~/Repos/fed-framework/gulp3/ ./html'

# Positioning Aliases
alias chrome="bounds Chrome 1760 1440 && pos Chrome 800 0 && bounds Chrome 1760 1440 && pos Chrome 800 0"
alias tp="bounds Terminal 900 1410 && pos Terminal 0 0"
alias fp="fin Finder 0 960 && bounds Finder 800 592"
alias codekit="pos CodeKit 4320 840"
alias slack="bounds Slack 1221 660 && pos Slack 40 750"
alias harvest="starter Harvest && bounds Harvest 340 600 && pos Harvest 4209 843"
alias startup='tp; fp; starter Chrome; chrome; starter Slack; slack;'


# print all colors to screen
function colorcodes() {
  for i in {0..255}; do; printf "\x1b[38;5;${i}mcolour${i}\x1b[0m\n"; done
}

# run whenever cd'ing
# set the first pane to show ls
function chpwd() {

  if [[ $TMUX ]]; then
    # get currently active items
    session=$(tmux display -p '#S')
    window=$(tmux display -p '#I')
    pane=$(tmux display -p '#P')
    current_path=$PWD
    active_pane=$(tmux display -pt "${TMUX_PANE:?}" "#{pane_index}")

    # dont run if in pane 1
    if [[ "$active_pane" -ne 1 ]]; then
      tmux send-keys -t "$session:$window.1" "cd $current_path;clear;list" Enter
      tmux select-pane -t "$active_pane"
    fi
  fi

}
