# Allows the dmenu to show all binaries, not just desktop files. See:
# https://github.com/enkore/j4-dmenu-desktop#i-want-it-to-display-normal-binaries-too-yes
j4-dmenu-desktop --dmenu="(cat; (stest -flx $(echo $PATH | tr : ' ') | sort -u)) | dmenu -i" --term="i3-sensible-terminal"
