echo -n "#### "

cat "$1" | \
	sed -n '/<p class="stotramtitle">/,/*/p' | \
	sed -e '/<div class="stotramtext">/,/*/d' | \
	perl -pe 's,<br />,\n,g' | \
	perl -pe 's/<.+?>//g' | \
	perl -pe 's/^\s*//g' | \
	grep -v '^[[:space:]]*$' | \
	sed 's/ *$//'

echo

cat "$1" | \
	sed -n '/<div class="stotramtext">/,/*/p' | \
	sed -e '/Coming soon/,/*/d' | \
	perl -pe 's,<br />,  \n,g' | \
	perl -pe 's/<.+?>//g' | \
	perl -pe 's/^\s*//g' | \
	perl -pe 's/&#8214;(.+?)&#8214;/\n‖$1‖\n\n/g' | \
	perl -pe 's/&#8214;/‖\n\n/g' | \
	sed -e 's/❘ /❘  \n/g' | \
	sed -e 's/| /❘  \n/g' | \
	grep -v '^[[:space:]]\+$'


