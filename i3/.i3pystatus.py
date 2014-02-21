#!/usr/bin/python
# -*- coding: utf-8 -*-

from i3pystatus import Status

status = Status(standalone=True)

# Display clock
status.register("clock", format="%Y-%m-%d vko %V | %H:%M",)

# Battery status
status.register("battery",
        format="{status} {consumption:.1f}W {percentage_design:.1f}% {remaining}",
        status={
            "DIS": "",
            "CHR": "",
            "FULL": ""},)

# Wireless status
status.register("wireless", interface="wlp3s0", format_up=" {essid} {quality:03.0f}%",)

# ALSA volume
status.register("alsa", format="{muted} {volume}", muted="", unmuted="",)

status.run()

