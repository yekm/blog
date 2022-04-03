sdir=$(dirname ${BASH_SOURCE[0]})
cat $sdir/_time | grep -i "$1" | grep -i "$2" | grep -i "$3"
