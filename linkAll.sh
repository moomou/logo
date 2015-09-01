#!/bin/sh -x

for f in `find .`; do
    if [[ -f $f ]]; then
        if [[ "$f" = *png ]]; then
            echo $f
            ln -s $f ./_all/`basename $f`
        fi
    fi
 done
