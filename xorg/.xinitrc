xrandr --setprovideroutputsource modesetting NVIDIA-0
xrandr --auto
xrdb -DENV_HOME="$HOME" -load ~/.Xresources
mpd
DEFAULT=startfluxbox
CK="exec ck-launch-session dbus-launch"
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
