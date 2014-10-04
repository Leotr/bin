#!/bin/bash
if pgrep "^mu$"
 then 
    sleep 30
    if pgrep "^mu$"
    then
        sleep 20
        if pgrep "^mu$"
        then
            kill `pgrep "^mu$"`
        fi
    fi
fi
mu index 
