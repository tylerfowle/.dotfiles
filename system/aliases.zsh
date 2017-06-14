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
alias bluetooth="system_profiler SPBluetoothDataType"

# Editor - load vim session
# move this into script if useful
alias es="nvim -S"

# Edit files quickly
alias editbash="e ~/.bash_profile"
alias editdot="e ~/.dotfiles"
alias editvim="e ~/.dotfiles/vim/vimrc.symlink"
alias editgitline='e /usr/local/bin/gitline.sh'

# dtags - tag and cd to directories
alias t=". dtags"

# hangouts
alias hangouts="https://hangouts.google.com"

# reload config
alias reload!='. ~/.zshrc'

# gitline - github api script
alias gitline='/usr/local/bin/gitline.sh'
alias gl='/usr/local/bin/gitline.sh'

# New Projects copy gulp3
alias dup='mkdir html && ditto ~/Repos/fed-framework/gulp3/ ./html'

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

# find [directory], in current directory, recursively, show size and sort by size
function findr() {
  find . -type d -name "$1" -print | xargs du -shc | gsort -h
}


#keep the last focused finder window up to date when cd in terminal
function chpwd() {
  osascript -e 'on run pwd
  set f to posix file pwd
      tell app "Finder"
          if number of Finder windows is 0 then
          open f
          else
          set target of window 1 to f
          end
      end
  end' "$PWD" > /dev/null
}
