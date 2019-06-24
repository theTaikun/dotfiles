xrandr --setprovideroutputsource modesetting NVIDIA-0
xrandr --auto
xrdb -DENV_HOME="$HOME" -load ~/.Xresources

CK="exec ck-launch-session dbus-launch"

mpd
exec feh --bg-fill ~/background &
compton -b -d $DISPLAY
export TERMINAL="terminator"
export THEMECOLOR=$(convert ~/background -resize 1x1 txt:- | awk -F' ' 'NR==2{print $3}')
~/bin/setthemecolor.py

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
