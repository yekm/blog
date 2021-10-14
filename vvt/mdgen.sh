
function get_lang {
    cat "$1" | sed -n "/^## $2/,/^##/p"
}

function get_table {
    f=$1
    l1=$2
    l2=$3
    cat "$f" | sed -n '1 p'
    echo
    echo "| $l1 | $l2 |"
    echo '| ------ | ------ |'
    paste -d '|' <(get_lang "$f" $l1) <(get_lang "$f" $l2) | \
        sed '1 d' | sed '$ d' | sed 's/|/ | /' | sed 's/^/| /; s/$/ |/'
}

i=0
echo "# Devanagari English" >index.md
ls -1 ../vv/*.md | grep -v index.md | while read f; do
    ((i++))
    echo $f
    title=$(cat "$f" | sed -n '1 p' | sed 's/# //')
    o=$(basename "$f")
    o=${o%%.md}-Devanagari-English.md
    echo "$i. [$title]($o)" >>index.md
    get_table "$f" Devanagari English >$o
done

