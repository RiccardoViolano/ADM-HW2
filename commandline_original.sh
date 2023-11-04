#!/bin/bash

cat series.json | jq -s '[.[] | {id: .id, title: .title, total_books: (.works | map(.books_count | tonumber) | add)}] |
sort_by(.total_books)| reverse | .[:5]'
