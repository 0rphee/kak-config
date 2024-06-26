#!/bin/bash

session_name="kak-global"
results=$(kak -l | grep $session_name)
kak -clear

if [[ $results == "" ]]; then
    kak -s $session_name $@
else
    # and run kakoune (with any arguments passed to the script)
    kak -c $session_name $@
fi

