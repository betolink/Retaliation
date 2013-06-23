#!/bin/bash
#Taken from http://elinux.org/RPi_Text_to_Speech_(Speech_Synthesis)
say() {
SP=${@:3};
echo $SP
local IFS=+;/usr/bin/mplayer -af volume=$1 -ao alsa -really-quiet -noconsolecontrols "http://translate.google.com/translate_tts?tl=$2&q=$SP"; }
say $*