#!/bin/bash

# Script taken from https://forums.linuxmint.com/viewtopic.php?t=295859
# Author - ColinS
# Set it to Gnome hotkeys via settings -> keyboard

function usage {
    echo
    echo "Usage: $0 (phone|music)"
    exit 0
}

case "$1" in
  phone)
      profilename="headset_head_unit"
      ;;
  music)
      profilename="a2dp_sink"
      ;;
  *)
      usage
      ;;
esac

# Get Card and Device
cardname=$(pactl list | grep bluez_card | awk '{print $NF}')
devicename=$(pacmd list-sinks | grep -o '<bluez_sink[^>]*' | cut -d\< -f2)

#change the default sink
pactl set-card-profile "$cardname" "$profilename" || echo "Problem setting profile"; exit 3
pacmd set-default-sink "$devicename" || echo "Problem setting default sink"; exit 4 

exit 0
