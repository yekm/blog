set -uve

shopt -s extglob
(ls -1 *english.html; ls -1 !(*english).html) | while read f ; do
    echo $f
    title=$(egrep -h '<title>' $f | sed 's/.*<title>\(.*\) - .*/\1/')
    lang=$(egrep -h '<title>' $f | sed 's/.*<title>\(.*\) - \(.*\) | .*/\2/')
    #md=${f%%.html}.md
    md="$(echo "$title" | tr ' ' '-').md"
    if [ ! -s "$md" ] ; then
        echo -e "# $title\n\n" >>$md
        echo "* [$title]($md)" >>index.md
    fi
    echo -e "### $lang\n" >>$md
    bash _mdgen1.sh "$f" >>$md
done
