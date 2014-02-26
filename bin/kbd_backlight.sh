#!/bin/sh

cur_brightness=`cat /sys/class/leds/asus\:\:kbd_backlight/brightness`
max_brightness=`cat /sys/class/leds/asus\:\:kbd_backlight/max_brightness`

case "$1" in
	up)
		if [ $cur_brightness -lt $max_brightness ]
		then
			let "cur_brightness += 1"
			echo $cur_brightness > '/sys/class/leds/asus::kbd_backlight/brightness'
		fi
		;;
	down)
		if [ $cur_brightness -gt "0" ]
		then
			let "cur_brightness -= 1"
			echo $cur_brightness > '/sys/class/leds/asus::kbd_backlight/brightness'
		fi
		;;
	reset)
		# For some reason the keyboard starts with the backlight fully on
		# but the current brightness value set to 0. It needs to be set to
		# another value before setting back to 0.
		echo 1 > '/sys/class/leds/asus::kbd_backlight/brightness'
		echo 0 > '/sys/class/leds/asus::kbd_backlight/brightness'
		;;
	*)
		exit 1
esac

exit 0

