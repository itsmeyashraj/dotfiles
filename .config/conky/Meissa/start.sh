#!/bin/bash

killall conky
sleep 2s
		
conky -c $HOME/.config/conky/Meissa/Meissa.conf &> /dev/null &
