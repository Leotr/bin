#!/bin/sh

# which osascript > /dev/null 2>&1 && osascript -e 'tell application "Emacs" to activate'
# emacsclient -nc "$@"
emacs=/usr/bin/emacs
emacsclient=/usr/bin/emacsclient
# emacs=/usr/local/Cellar/emacs/24.3/Emacs.app/Contents/MacOS/Emacs
# emacsclient=/usr/local/Cellar/emacs/24.3/bin/emacsclient
# alternate for running from Emacs
# emacs=/Applications/Emacs4.app/Contents/MacOS/Emacs-x86_64-10.9
# emacsclient=/Applications/Emacs4.app/Contents/MacOS/bin-x86_64-10.9/emacsclient 


    $emacsclient -nc -a "" "$@"

