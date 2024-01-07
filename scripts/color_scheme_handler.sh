#!/bin/bash

set_light () {
    kitty +kitten themes --reload-in=all Catppuccin-Latte
    find $XDG_RUNTIME_DIR -name "nvim.*" 2>/dev/null -exec nvim --server "{}" --remote-expr 'execute("set background=light")' \;
}

set_dark () {
    kitty +kitten themes --reload-in=all Catppuccin-Mocha
    find $XDG_RUNTIME_DIR -name "nvim.*" 2>/dev/null -exec nvim --server "{}" --remote-expr 'execute("set background=dark")' \;
}


gsettings monitor org.gnome.desktop.interface color-scheme | while read scheme
do
    if [[ $scheme == *light* ]]; then
        set_light
    else
        set_dark
    fi
done
