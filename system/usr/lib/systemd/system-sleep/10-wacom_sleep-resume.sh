#!/bin/sh

# wacom sleep/resume fix
# Due to a linux bug,
# sleeping and the resuming causes touchscreen stylus to be unresponsive.
# Only solution I've found is to remove then readd the wacom driver
# This script, when placed in /usr/lib/systemd/system-sleep, should fix issue

# Following links mention ubuntu, but this problem appeared for me on arch
# https://bugs.launchpad.net/ubuntu/+source/xinput/+bug/1275416
# https://askubuntu.com/questions/511068/wacom-tablet-removed-after-sleep-mode

case "$1" in
	pre)
            rmmod wacom
	;;
	post)
            modprobe wacom
	;;
esac
exit 0
