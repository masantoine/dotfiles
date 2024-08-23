# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# colors
default=$(tput sgr0)
red=$(tput setaf 1)
green=$(tput setaf 2)
purple=$(tput setaf 5)
orange=$(tput setaf 9)

# custom prompt
# print job history ref and time
PS1='\![\t] '
# print username and hostname if unusual
#PS1+='\u@\h'
# print current directory
PS1+='${purple}\W${default}\$ '

export EDITOR=/usr/bin/vim
