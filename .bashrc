# neofetch
#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return
## Aliases

## Nvim
alias nv='nvim'
alias v='vim'

## Mostrar contenido de un archivo con ' cat '
alias cat='ccat -G Plaintext="blink" -G Keyword="purple" -G String="darkgreen" -G Punctuation="brown" -G Comment="faint"'

## Mostrar el arbol de directorios con ' tree '
alias tree='exa -aT --color=always --group-directories-first'

## Mostrar archivos ' ls '
alias ls='exa --icons --group-directories-first'


## Color a ' grep '
alias grep='grep --color=auto'
alias egrep='egrep --color=auto'
alias fgrep='fgrep --color=auto'


## Confirmar antes de sobre-escribir archivos
alias cp="cp -i"
alias mv='mv -i'
alias rm='rm -i'

## Git --Bare
alias config='/usr/bin/git --git-dir=$HOME/dotfiles/ --work-tree=$HOME'


## Extracción de archivos
# uso: ex <archivo>
ex ()
{
  if [ -f $1 ] ; then
    case $1 in
      *.tar.bz2)   tar xjf $1   ;;
      *.tar.gz)    tar xzf $1   ;;
      *.bz2)       bunzip2 $1   ;;
      *.rar)       unrar x $1   ;;
      *.gz)        gunzip $1    ;;
      *.tar)       tar xf $1    ;;
      *.tbz2)      tar xjf $1   ;;
      *.tgz)       tar xzf $1   ;;
      *.zip)       unzip $1     ;;
      *.Z)         uncompress $1;;
      *.7z)        7z x $1      ;;
      *.deb)       ar x $1      ;;
      *.tar.xz)    tar xf $1    ;;
      *.tar.zst)   unzstd $1    ;;      
      *)           echo "'$1' cannot be extracted via ex()" ;;
    esac
  else
    echo "'$1' is not a valid file"
  fi
}







## Prompt
#PS1='[\u@\h \W]\$ '
source ~/.git-prompt.sh
export GIT_PS1_SHOWDIRTYSTATE=1
## Colors
orange=$(tput setaf 166);
red=$(tput setaf 124);
yellow=$(tput setaf 228);
green=$(tput setaf 71);
white=$(tput setaf 15);
purple=$(tput setaf 127)
bold=$(tput bold);
reset=$(tput sgr0);

## 
# Nerd Font requerido
PS1='\[${bold}\]'; 
PS1+='\[${orange}\]\u';
PS1+='\[${white}\] @ ';
PS1+='\[${yellow}\]\h';
PS1+='\[${white}\] en ';
PS1+='\[${green}\]  \W ';
PS1+='\[${purple}\]';
PS1+='\[$(__git_ps1 "  en  %s")\] \$ '; # Git info linea 73 - 74 requeridas
PS1+='\n';
PS1+="\`if [ \$? = 0 ]; then echo '\[${green}\]     '; else echo '\[${red}\]    ' ; fi\`"; # Muestra si el último comando ingresado es correcto o no
PS1+='\[${reset}\]';
export PS1;

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/home/fernando/anaconda3/bin/conda' 'shell.bash' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/home/fernando/anaconda3/etc/profile.d/conda.sh" ]; then
        . "/home/fernando/anaconda3/etc/profile.d/conda.sh"
    else
        export PATH="/home/fernando/anaconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

