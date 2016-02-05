#!/bin/bash
ARTIST=$(cmus-remote -Q 2>/dev/null | grep artist -w | cut -d " " -f 3-)
TITLE=$(cmus-remote -Q 2>/dev/null | grep title | cut -d " " -f 3-)
if [ -n "$ARTIST" ];
then
	printf "$ARTIST - $TITLE"
fi
