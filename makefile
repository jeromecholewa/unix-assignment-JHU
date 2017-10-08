README.md: guessinggame.sh makefile 
	echo "# UNIX assignment 'the Guessing Game'" > README.md
	date >> README.md
	echo >> README.md
	echo The bash file guessinggame.sh contains the following number of lines >> README.md
	echo >> README.md
	wc -l guessinggame.sh | egrep -o "[0-9]+" >> README.md
	

