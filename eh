#!/bin/sh

macos=/usr/local/Cellar/emacs/24.3/Emacs.app/Contents/MacOS
ebin=/usr/local/Cellar/emacs/24.3/bin
if pgrep -qf 'Emacs.*'; then [[ $($ebin/emacsclient -socket-name "thrice" -e '(<= 2
 (length (visible-frame-list)))') = t ]] && args=-c || args=-c
$ebin/emacsclient $args --socket-name "thrice" "$@"
else
$ebin/emacsclient -n -a "" --socket-name "thrice" "$@"
fi
