set -uve

lvb=$(echo -e '\u2758')

shopt -s extglob
(ls -1 *english.html; ls -1 !(*english).html) | while read f ; do
    echo $f
    title=$(egrep -h '<title>' $f | sed 's/.*<title>\(.*\) - .*/\1/')
    lang=$(egrep -h '<title>' $f | sed 's/.*<title>\(.*\) - \(.*\) | .*/\2/')
    #md=${f%%.html}.md
    md="$(echo "$title" | tr ' ' '-').md"
    if [ ! -s "$md" ] ; then
        echo -e "# $title\n\n" >>$md
        cat >>index.md << EOF
* [$title]($md)
EOF
    fi
    echo -e "## $lang\n" >>$md
    cat $f | sed -n '/<p class="stotramtitle">/,/*/p' | html2text -b 0 | sed 's/ *$//;s/\([^^]\)$/\1  /' | sed "s/|/$lvb/" | sed '/Coming soon/,/*/d' >>$md
done
