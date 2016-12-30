# Jump to locations
alias cdn='cd ~/Repos/fdp_cdn'
alias misc='cd ~/Repos/fdp-misc-design'
alias docker='cd ~/Repos/fdp-design-container'
alias sites='cd ~/Sites'
alias repos='cd ~/Repos'

# Other
alias la="ls -Ga"
alias ..="cd .."
alias list="ls -1"
alias editbash="atom ~/.bash_profile"

alias reload!='. ~/.zshrc'

# gitline - github api script
alias editgitline='atom /usr/local/bin/gitline.sh'
alias gitline='/usr/local/bin/gitline.sh'
alias gl='/usr/local/bin/gitline.sh'

# github package manager
alias editgpm='atom /usr/local/bin/gpm.sh'
alias gpm='/usr/local/bin/gpm.sh'

# New Projects copy gulp2
alias dup='mkdir html && ditto ~/Repos/fdp-misc-design/gulp2/ ./html'

# Positioning Aliases
alias chrome="bounds Chrome 1760 1440 && pos Chrome 800 0 && bounds Chrome 1760 1440 && pos Chrome 800 0"
alias tp="bounds Terminal 900 1410 && pos Terminal 0 0"
alias fp="fin Finder 0 960 && bounds Finder 800 592"
alias codekit="pos CodeKit 4320 840"
alias slack="bounds Slack 1200 820 && pos Slack 2560 0"
alias harvest="starter Harvest && bounds Harvest 340 600 && pos Harvest 4209 843"
alias startup='tp; fp; starter Chrome; chrome; starter Slack; slack;'


# print all colors to screen
function colorcodes() {
  for i in {0..255}; do; printf "\x1b[38;5;${i}mcolour${i}\x1b[0m\n"; done
}

# run whenever cd'ing
# set the first pane to show ls
function chpwd() {
  session=0
  window=${session}:1
  pane=${window}.1

  current_path=$PWD
  active_pane=$(tmux display -pt "${TMUX_PANE:?}" "#{pane_index}")

  # dont run if in pane 1
  if [[ "$active_pane" -ne 1 ]]; then
    tmux select-pane -t "$pane"
    tmux send-keys -t "$pane" "cd $current_path;clear;list" Enter
    tmux select-pane -t "$active_pane"
  fi
}
