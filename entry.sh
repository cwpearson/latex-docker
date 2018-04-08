#!/bin/sh
set -e

Xvfb :40 -ac &
child=$!
export DISPLAY=:40
sleep 3

exec $@
