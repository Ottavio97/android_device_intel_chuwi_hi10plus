#!/bin/bash

export VENDOR=intel
export DEVICE=chuwi_hi10plus
export COMMON_DEVICE=cherrytrail-common
export TARGET_BOARD_PLATFORM=gmin

../../../vendor/cm/tools/extract-files.sh $@
