#!/bin/sh
MUTE=$(amixer get Master | grep Left: | cut -d " " -f8 )
VOLUME=$(amixer get Master | grep Left: | cut -d " " -f7 | tr -d '[%]')
if [ $MUTE == "[off]" ]
then
    echo ""
else
    if [ $VOLUME > 50 ]
    then
        echo $VOLUME"% "
    else
        echo $VOLUME"% "
    fi
fi
