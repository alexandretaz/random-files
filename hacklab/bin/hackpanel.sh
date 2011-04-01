#!/bin/bash
cd ~/hackpanel
for i in *vim;do
    gnome-terminal -e "vim -S $i";
done
