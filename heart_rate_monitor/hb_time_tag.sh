#!/bin/bash
while read line ; do
    hb=$((16#${line}))
    echo `date +%Y%m%d-%H%M%S` $hb
done

