#!/bin/sh

emacs=/Applications/Emacs.app/Contents/MacOS/Emacs-x86_64-10.9
emacsclient=/Applications/Emacs.app/Contents/MacOS/bin-x86_64-10.9/emacsclient 
if pgrep -qf 'Emacs.*'; then [[ $($emacsclient -a "" --socket-name "quiet" -e '(<= 2
 (length (visible-frame-list)))') = t ]] && args=-n || args=-nc
                             $emacsclient -a "" --socket-name "quiet"  $args"$@"
else
    $emacs --daemon=quiet -q
    $emacsclient  -socket-name "quiet" -nc "$@"
fi
