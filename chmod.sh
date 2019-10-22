#!/bin/bash

if [[ $# == 1 ]]; then
    if [[ -e $1 ]]; then
        if [[ -f $1 ]]; then
            chmod u+x $1
            echo "Added execute permission"
        elif [[ ! -f $1 ]]; then
            echo "Sorry, $1 is not a regular file"
        fi
    elif [[ ! -e $1 ]]; then
        echo "Sorry, $1 does not exist"
    fi
fi