#!/bin/bash

awk '{for(x=1;$x;++x)print $x "-"}' ${1} | tr "${PUNCT}" "@" | sed 's/@//g' | sort | uniq -c | sort > ${1}.count
