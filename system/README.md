# System-level Config

## Files that go somewhere other than $HOME

*DO NOT* use stow for these files,
as it can cause permission issues.

* xorg.conf to `/etc/X11/`
* 10-wacom_sleep-resume.sh to `/usr/lib/systemd/system-sleep`
    Use if sleeping causes wacom tablet to become unresponsive
