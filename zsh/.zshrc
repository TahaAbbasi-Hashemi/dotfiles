#Basic Configuration
autoload -U colors && colors
setopt autocd
stty stop undef
setopt interactive_comments
autoload -U compinit promptinit
zstyle ":completion:*" menu select
zmodload zsh/complist
compinit 
promptinit
_comp_options+=(globdots)

#PS1
PS1="%K{cyan}F{white}%B%n@%m%b %D{%a %b %d} %D{%I:%M:%S%P} %b%f $prompt_newline%k%F{cyan}%/%f >"
PS1="%F{white}%BTaha@Beryllium%b %D{%a %b %d} %D{%I:%M:%S%P} %b%f $prompt_newline%k%F{cyan}%~%f >"


#History Saving
HISTSIZE=1000
SAVEHIST=1000
HISTFILE=~/.config/zsh/history

#Terminal Colors for User
if [ "$TERM" = "linux" ]; then
    _SEDCMD='s/.*\*color\([0-9]\{1,\}\).*#\([0-9a-fA-F]\{6\}\).*/\1 \2/p'
    for i in $(sed -n "$_SEDCMD" $HOME/.config/x11/Xresources | awk '$1 < 16 {printf "\\e]P%X%s", $1, $2}'); do
        echo -en "$i"
    done
    clear
fi

#starting .xresources colors
#xrdb $HOME/.config/x11/Xresources 

source ~/.config/zsh/zshHighlighting/zsh-syntax-highlighting.zsh
source ~/.config/zsh/zshSugestions/zsh-autosuggestions.zsh
source ~/.config/zsh/aliasrc    #Aliases


#Autorun
#fastfetch
./bin/fetch.sh

