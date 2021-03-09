xrandr --setprovideroutputsource modesetting NVIDIA-0
xrandr --auto
xrdb -DENV_HOME="$HOME" -load ~/.Xresources

# ck-launch-session may be needed for pulseaudio
#CK="exec ck-launch-session dbus-launch"

ibus-daemon -drx
syncthing &
nm-applet &
export THEMECOLOR=$(convert ~/background -resize 1x1 txt:- | awk -F' ' 'NR==2{print substr($3,0,7)}')
exec feh --bg-max ~/background --image-bg $THEMECOLOR &
compton -b -d $DISPLAY --backend glx
export TERMINAL="terminator"
export MATLABROOT=$HOME/.local/MATLAB/R2019a/
~/bin/setthemecolor.py
keepassxc &
xbindkeys

DEFAULT=startfluxbox
case $WM in
    fluxbox)
        ${CK} startfluxbox
        ;;
    i3)
        ${CK} i3
        ;;
    *)
        ${CK} $DEFAULT
        ;;
esac
