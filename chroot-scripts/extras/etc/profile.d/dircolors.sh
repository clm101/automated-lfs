#!/bin/bash

if [ -f "/etc/dircolors" ] ; then
	eval $(dircolors -b /etc/dircolors)
fi

if [ -f "$HOME/.dircolors" ] ; then
	eval $(dircolors -b $HOME/.dircolors)
fi
