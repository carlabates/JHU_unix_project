all:  README.md

README.md:
	touch README.md
	echo "Title:  Bash, Make, Git and GitHub" >> README.md
	echo " " >> README.md
	echo "This file was created on" >> README.md
	date -r README.md >> README.md
	echo " " >> README.md
	echo "guessinggame.sh has the following number of lines" >> README.md
	wc -l guessinggame.sh | egrep -o "[0-9]+" >> README.md
