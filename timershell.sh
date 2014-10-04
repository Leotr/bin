#!/bin/bash

macos=/usr/local/Cellar/emacs/24.3/Emacs.app/Contents/MacOS
ebin=/usr/local/Cellar/emacs/24.3/bin
sleep 5
$ebin/emacsclient -a "" --socket-name "thrice" "$@" -e \(my-clock-out\)
