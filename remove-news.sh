#!/bin/bash

echo $0

if test -f news_en.titles; then cat news_en.titles | ts '%Y.%m.%d' >> backup-titles.en; fi
if test -f news_es.titles; then cat news_es.titles | ts '%Y.%m.%d' >> backup-titles.es; fi
if test -f news_pt.titles; then cat news_pt.titles | ts '%Y.%m.%d' >> backup-titles.pt; fi

rm news_*
