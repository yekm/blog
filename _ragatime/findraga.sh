sdir=$(dirname $(readlink ${BASH_SOURCE[0]}))
#set -vx
files=$(echo "$@" | sed -n '/.mp3$/p; /.flac$/p' | wc -l)

if (( $files )); then
    echo $@ | \
        sed 's/raa\?ga\?//ig; s/\.mp3//i; s/.flac//i;' | \
        tr ' ' '\n' | \
        tr -d -c 'a-zA-Z\n' | \
        sort -u | \
        grep -v ^$ | \
        while read r; do
            $0 $r
    done | sort -u
else
    cat $sdir/_time | grep -i "$1" | grep -i "$2" | grep -i "$3"
fi
