autoload -Uz colors && colors

export EDITOR='nvim'
export HTML_TIDY=$HOME/.tidyrc
export TODO_DIR=$HOME/Repos/tasks
export TODO_FILE=$TODO_DIR/inbox.md
export TIMEFMT=$'\n\[%J\]\nreal\t%*Es\nuser\t%U\nsys\t%S'
# export TIMEFMT="$fg[green]%J$reset_color \ntime: $fg[blue]%*Es$reset_color, cpu: $fg[blue]%P$reset_color"
