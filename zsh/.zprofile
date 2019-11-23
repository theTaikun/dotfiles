# Sets vim as the default editor for things like commit messages
export VISUAL=vim
export EDITOR="$VISUAL"

if [ -d "$HOME/bin" ] ; then
    PATH="$HOME/bin:$PATH"
fi

export XMODIFIERS=@im=ibus
export GTK_IM_MODULE=ibus
export QT_IM_MODULE=ibus
