#!/bin/bash

for ARG in "$@"; do
    echo repo: $ARG - $(find $ARG -regex ".*\.\(txt\|rst\|md\|png\|gif\|jpg\|svg\)" -print0 | du -cb --files0-from=- | tail -1)
done