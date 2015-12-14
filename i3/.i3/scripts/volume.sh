#!/bin/sh
MUTE=$(amixer get Master | grep Left: | cut -d " " -f8 )
VOLUME=$(amixer get Master | grep Left: | cut -d " " -f7 | tr -d '[%]')
if [ $MUTE == "[off]" ] || [ $VOLUME == 0 ]
then
    echo ""
else
    if [ $VOLUME -ge 50 ]
    then
        echo $VOLUME"% "
    else
        echo $VOLUME"% "
    fi
fi
