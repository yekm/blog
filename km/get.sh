wget -O - http://www.keygenmusic.net/?page=vote&lang=en | \
    grep color:white | \
    grep '<tr><td' | \
    cut -d\" -f4 | \
    while read f; do
        fn=$(echo $f | tr '/' '-')
        i=$(( $i + 1 ))
        wget -O $i-$fn "http://www.keygenmusic.net/$f"
    done

