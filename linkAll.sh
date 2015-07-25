#!/bin/sh -x

for d in *; do
    if [[ "$d" != _* ]] && [[ -d $d ]]; then
        for f in ./$d/*; do
            if [[ "$f" = *png ]] && [[ -f $f ]]; then
                echo $f
                ln -s $f ./_all/`basename $f`
            fi
        done
    fi
 done
