#!/bin/sh

layout=$(find /run/media/$USER -name layout.cys)
mount=${layout%/*}

if ! [[ -f $layout ]]; then
	echo "ERROR: $layout does not exist" >&2
	exit 1
fi

if [[ -f layout.cys ]]; then
	echo "Installing layout.cys to $layout"
	mv layout.cys $layout
fi

echo "Unmount $mount"
sudo umount $mount
