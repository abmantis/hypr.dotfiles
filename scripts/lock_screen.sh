#!/bin/bash

CURRENT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
WALLPAPER="$CURRENT_DIR/../links/wallpaper"
swaylock -i $WALLPAPER --scaling fill "$@"
