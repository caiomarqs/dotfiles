#create by caiomarqs
PROMPT='%F{015}[%D{%K:%M:%S}] %n ➜ %F{082}%B%~ %f%b%# '
# PROMPT='%K{021}%F{015}[%D{%K:%M:%S}] %n ➜  %B%~ %k%f%b %# '
# PROMPT='%K{021}%F{015}[%D{%K:%M:%S}] %n in %B%~ %k%f%b %# '

#ls colors
alias ls='ls --color=tty'

# load History
HISTSIZE=1000
SAVEHIST=1000
HISTFILE=~/.zsh_history
#imediataly command in history
setopt INC_APPEND_HISTORY
#time stam in history
HISTTIMEFORMAT="[%F %T] "
setopt EXTENDED_HISTORY

history_search() {
  if [[ ($* = 1) || ($* = "") ]]
    then
      fc -l 1
  elif [[ $* = "-li" ]] #history time stamp
    then
      fc -li 1
  elif [[ $* != "" ]]
    then
      fc -l $*
    fi
}

alias -g history='history_search $*'

# auto complete
autoload -Uz compinit
compinit

zstyle ':completion:*' completer _expand _complete _correct _approximate
zstyle ':completion:*' group-name ''
zstyle ':completion:*' menu select=2
eval "$(dircolors -b)"
zstyle ':completion:*:default' list-colors ${(s.:.)LS_COLORS}
zstyle ':completion:*' list-colors ''
zstyle ':completion:*' list-prompt %SAt %p: Hit TAB for more, or the character to insert%s
zstyle ':completion:*' matcher-list '' 'm:{a-z}={A-Z}' 'm:{a-zA-Z}={A-Za-z}' 'r:|[._-]=* r:|=* l:|=*'
zstyle ':completion:*' menu select=long
zstyle ':completion:*' select-prompt %SScrolling active: current selection at %p%s
zstyle ':completion:*' use-compctl false
zstyle ':completion:*' verbose true

# zstyle ':completion:*:*:kill:*:processes' list-colors '=(#b) #([0-9]#)*=0=01;31'
zstyle ':completion:*:kill:*' command 'ps -u $USER -o pid,%cpu,tty,cputime,cmd'

#keys configs
bindkey  "^[[H"   beginning-of-line
bindkey  "^[[F"   end-of-line
bindkey  "^[[3~"  delete-char
