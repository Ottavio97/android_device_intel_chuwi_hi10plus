#!/bin/bash
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
#Music Tile Patch

patch -s -f $DIR/../../../../frameworks/base/packages/SystemUI/src/com/android/systemui/qs/tiles/MusicTile.java < $DIR/MusicTile.patch > /dev/null

if [ $? == 0 ]; then
	echo "Patched successfully";
else
	echo "Error patching or Already patched";
fi
