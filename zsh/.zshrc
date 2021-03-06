#Basic Configuration
autoload -U colors && colors
setopt autocd
stty stop undef
setopt interactive_comments
autoload -U compinit promptinit
zstyle ":completion:*" menu select
zmodload zsh/complist
compinit 
#promptinit
_comp_options+=(globdots)

#PS1
##PS1="%K{cyan}F{white}%B%n@%m%b %D{%a %b %d} %D{%I:%M:%S%P} %b%f $prompt_newline%k%F{cyan}%/%f >"
PS1="%K{black}%F{blue}%BTaha@Beryllium%b %D{%a %b %d} %D{%I:%M:%S%P} %b%f 
%k%F{cyan}%~%f $"


#History Saving
HISTSIZE=1000
SAVEHIST=1000
HISTFILE=~/.config/zsh/history
setopt HIST_IGNORE_ALL_DUPS
setopt HIST_FIND_NO_DUPS

#Terminal Colors
if [ "$TERM" = "linux" ]; then
    echo -en "\e]P0$(echo $BLACK | tail -c 7)"
    echo -en "\e]P8$(echo $BLACK | tail -c 7)"
    echo -en "\e]P1$(echo $RED | tail -c 7)"
    echo -en "\e]P9$(echo $RED | tail -c 7)"
    echo -en "\e]P2$(echo $GREEN | tail -c 7)"
    echo -en "\e]PA$(echo $GREEN | tail -c 7)"
    echo -en "\e]P3$(echo $YELLOW | tail -c 7)"
    echo -en "\e]PB$(echo $YELLOW | tail -c 7)"
    echo -en "\e]P4$(echo $BLUE | tail -c 7)"
    echo -en "\e]PC$(echo $BLUE | tail -c 7)"
    echo -en "\e]P5$(echo $MAGENTA | tail -c 7)"
    echo -en "\e]PD$(echo $MAGENTA | tail -c 7)"
    echo -en "\e]P6$(echo $CYAN | tail -c 7)"
    echo -en "\e]PE$(echo $CYAN | tail -c 7)"
    echo -en "\e]P7$(echo $WHITE | tail -c 7)"
    echo -en "\e]PF$(echo $WHITE | tail -c 7)"
fi

#plugins
source ~/.config/zsh/zshHighlighting/zsh-syntax-highlighting.zsh
source ~/.config/zsh/zshSugestions/zsh-autosuggestions.zsh
source ~/.config/zsh/aliasrc    #Aliases


#Autorun
./bin/fetch.sh

