#!/bin/sh

open -a slack
open -a eclipse
open -a "Microsoft Outlook"
open -a "Microsoft Lync"
open -a "Google Chrome"
open -a togglDesktop
open -a TextMate
open -a Evernote
osascript -e 'tell application "Terminal" to activate' -e 'tell application "System Events" to tell process "Terminal" to keystroke "n" using command down'


cd /Users/mnitchie/mercurial/HARP
vagrant up
vagrant ssh -c '/home/vagrant/services/up.sh'

osascript -e 'tell application "Terminal" to close (every window whose name contains " .sh")' & exit
