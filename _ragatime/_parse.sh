filter() {
	html2text "$1" |\
	sed -n "/## Songs/q;p" | \
	sed "/^!\[\]/d" | \
	sed "/\[Raagtime/d" | \
	sed "/^**/ { N;N;s/\n//g; }" \
	>"$1.txt"
}

export -f filter

ls -1 *.html | parallel filter {}
rm time.*
grep Time *.txt | sed "s/  /\t/" | sort -k2 | sed 's/:\*\*Time\*\*\t/\n/' | while read r; read t; do grep "^##" "$r" | sed 's/.*## //'>>time.$t ; done
rm _time
for f in time.*; do
	cat $f | sed 's/Raag //' | sort >/tmp/raga.samay.tmp
	mv /tmp/raga.samay.tmp "$f"
	t=$(echo $f | cut -f2 -d.)
	cat $f | sed "s/^/$t /" >>_time
done


paste -d'|' time.06-09 time.09-12 time.12-15 time.15-18 | sed 's/^/|/;s/$/|/' | column -s'|' -o'|' -t >_day
paste -d'|' time.18-21 time.21-24 time.24-03 time.03-06 | sed 's/^/|/;s/$/|/' | column -s'|' -o'|' -t >_night
paste -d'|' time.Monsoon                                | sed 's/^/|/;s/$/|/' | column -s'|' -o'|' -t >_m

