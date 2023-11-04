# Parse the JSON, sum the books_count for each series, sort by the total and get the top 5
jq -s '[.[] | {id: .id, title: .title, total_books_count: ([.works[].books_count | tonumber] | add)}] | sort_by(.total_books_count) | reverse | .[:5]' series.json

