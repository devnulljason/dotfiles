# The following lines were added by compinstall

zstyle ':completion:*' completer _expand _complete _ignored _approximate
zstyle ':completion:*' completions 1
zstyle ':completion:*' format 'Completing %d'
zstyle ':completion:*' glob 1
zstyle ':completion:*' list-colors ''
zstyle ':completion:*' list-prompt %SAt %p: Hit TAB for more, or the character to insert%s
zstyle ':completion:*' matcher-list '' 'm:{[:lower:][:upper:]}={[:upper:][:lower:]} r:|[._-]=* r:|=*' 'l:|=* r:|=*'
zstyle ':completion:*' max-errors 2
zstyle ':completion:*' menu select=long
zstyle ':completion:*' select-prompt %SScrolling active: current selection at %p%s
zstyle ':completion:*' substitute 1
zstyle :compinstall filename '/home/jason/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall
# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
# End of lines configured by zsh-newuser-install
export PATH=$HOME/.local/bin:$PATH
alias ls='ls --color'
alias la='ls -A'
alias ll='ls -al'
# export TERM='screen-256color'
export MANWIDTH=80
export WECHALLUSER="onom4stic0n"
export WECHALLTOKEN="B375C-32CFF-95668-54DB3-EAEAF-78F08"
PROMPT=$'%F{82}%n%f@%F{198}%{\e[3m%}%m%{\e[0m%}%f:%F{208}%1~%f $ '
# . $HOME/.local/lib/python3.6/site-packages/powerline/bindings/zsh/powerline.zsh
source virtualenvwrapper.sh
# bindkey -v
echo $(fortune -a)

