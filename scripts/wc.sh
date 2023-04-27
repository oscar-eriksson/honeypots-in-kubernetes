#!/bin/bash

for ARG in "$@"; do
    echo repo: $ARG - $(find $ARG -regex ".*\.\(txt\|rst\|md\)" | xargs wc -w | tail -1)
done