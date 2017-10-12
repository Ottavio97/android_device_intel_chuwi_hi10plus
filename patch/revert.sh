#!/bin/bash
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
#Music Tile Patch

patch -s -f -R $DIR/../../../../frameworks/base/packages/SystemUI/src/com/android/systemui/qs/tiles/MusicTile.java < $DIR/MusicTile.patch > /dev/null

if [ $? == 0 ]; then
	echo "Reverted successfully";
else
	echo "Error reverting or Already reverted";
fi
