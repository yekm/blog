ls -1 *.rar *.7z | while read f; do
    d=$(echo "$f" | cut -f -2 -d. | cut -f1,3- -d-)
    mkdir -p "$d" || continue
    cd "$d" || continue
    7z -y x "../$f" || exit -1
    cd ..
done


find ./ -type f -mindepth 2 | cut -c3- | sort -n |  while read f; do
    n=$(echo "$f" | cut -f1 -d-)
    name=$(echo "$f" | cut -f2- -d/)
    echo $n --- $name
    [ -s "$n.ogg" ] && continue
    ffmpeg -y -hide_banner -nostdin -loglevel warning -i "$f" -c:a libopus -b:a 32k "$n.ogg" &
done

echo "## keygenmusic" >mod.md
ls *.ogg | while read f; do
cat >>mod.md << EOF
* $f $(find . -type f -maxdepth 1 -name "${f%%.ogg}-*")
<audio controls src="$n.ogg"> upgrade your browser </audio>
EOF
done
