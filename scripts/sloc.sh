#!/bin/bash

for ARG in "$@"; do
    echo repo: $ARG - $(cloc --quiet -hide-rate --json $ARG | jq '.SUM | .code')
     
done