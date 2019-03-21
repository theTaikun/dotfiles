xrandr --setprovideroutputsource modesetting NVIDIA-0
xrandr --auto
xrdb -DENV_HOME="$HOME" -load ~/.Xresources
mpd
exec ck-launch-session dbus-launch i3

