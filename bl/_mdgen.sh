for f in *.txt; do
    echo $f
    cat $f | sed -n '/##/,/*/p' | egrep -v category >$f.md
    title=$(cat $f | sed -n '/##/,/*/p' | egrep -v category | egrep '##' | cut -f2- -d' ')
    link=$f.md
    cat >>index.md << EOF
* [$title]($link)
EOF
done
