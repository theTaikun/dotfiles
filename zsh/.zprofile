# Sets vim as the default editor for things like commit messages
export VISUAL=vim
export EDITOR="$VISUAL"

if [ -d "$HOME/bin" ] ; then
    PATH="$HOME/bin:$PATH"
fi
