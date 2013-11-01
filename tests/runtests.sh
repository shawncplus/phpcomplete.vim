#!/bin/bash

VU='../../vimunit/vutest.sh'

if [ ! -f $VU ]; then
	echo "Could not run tests. Vimunit executeable not found at: '$VU'"
else
    if [[ $# > 0 ]]; then
        for f in $*; do
            $VU -v $f
        done
    else
        for f in ./*.vim; do
            $VU -v $f
        done
    fi
fi
