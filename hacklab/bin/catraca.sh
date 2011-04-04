#!/bin/bash
for i in `seq 3`;do
    (gnome-terminal -e "ssh root@catracalivre.com.br") &
done
