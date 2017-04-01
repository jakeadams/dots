#!/bin/sh

dockutil --no-restart --remove all
dockutil --no-restart --add "/Applications/Marked 2.app"

killall Dock