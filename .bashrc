export LS_OPTIONS='--color=auto'

if [ -x dircolors ]
then
    eval "`dircolors -b ~/bin/dotfiles/.dir_colors`"
fi

source ~/bin/dotfiles/bash/env
source ~/bin/dotfiles/bash/aliases
source ~/bin/dotfiles/bash/config
if [ -f ~/.bashrc.local ]
    source ~/.bashrc.local
fi

