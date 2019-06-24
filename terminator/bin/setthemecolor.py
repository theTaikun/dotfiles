#!/usr/bin/env python3

# Sets Terminator title color to THEMECOLOR
# THEMECOLOR is based on colors used in background
# Requires the python module 'configobj'
# Built by theTaikun

import os
from configobj import ConfigObj

config = ConfigObj(os.path.expanduser('~/.config/terminator/config'))
config['global_config']['title_transmit_bg_color']=os.environ['THEMECOLOR']
config.write()
