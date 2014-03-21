#!/bin/sh

macos=/usr/local/Cellar/emacs/24.3
if pgrep -qf 'Emacs.*--daemon'; then
  [[ $($macos/bin/emacsclient -e '(<= 2 (length (visible-frame-list)))') = t ]] && args=-n || args=-nc
else
  $macos/bin/emacs --daemon
  args=-nc
fi
$macos/bin/emacsclient $args "$@"
open -a /Applications/Emacs.app
