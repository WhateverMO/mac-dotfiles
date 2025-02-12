#!/bin/bash

# backup previous links
mv "${HOME}"/.config/yabai 	"${HOME}"/.config/yabai.bak 
mv "${HOME}"/.config/skhd 	"${HOME}"/.config/skhd.bak 
mv "${HOME}"/.config/sketchybar "${HOME}"/.config/sketchybar.bak 
mv "${HOME}"/.config/macUtils 	"${HOME}"/.config/macUtils.bak 

# Install configs
ln -s "$(pwd)/yabai" "${HOME}/.config/yabai"
ln -s "$(pwd)/skhd" "${HOME}/.config/skhd"
ln -s "$(pwd)/sketchybar" "${HOME}/.config/sketchybar"
ln -s "$(pwd)/macUtils" "${HOME}/.config/macUtils"
