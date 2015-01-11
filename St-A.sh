#!/bin/bash
# ------------------------------------------------------------------
#
#     Scripts/mailcount
#     Description: Script for checking the number of unread mails
#     Author: Alex Sánchez <kniren@gmail.com>
#
# ------------------------------------------------------------------

MAILDIR="$HOME/Maildir/St-A/INBOX/new"
ICON="mail.xbm"
NUMBER=`find $MAILDIR -type f | wc -l`

ICON='^i(/home/leotr/G/dotfiles/dzen/icons/xbm8x8/'"$ICON)"
echo "$NUMBER"
