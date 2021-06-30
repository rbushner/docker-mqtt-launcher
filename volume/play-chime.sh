#!/bin/sh

case $1 in
  (*:*) file=${1%:*} volume=${1##*:};;
  (*)   file=$1      volume=25;;
esac

/usr/bin/mplayer -ao $MPLAYER_AO -af $MPLAYER_AF -volume $volume /mqtt-launcher/chimes/$file
