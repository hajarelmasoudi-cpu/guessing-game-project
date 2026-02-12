README.md: guessinggame.sh
	echo "# Guessing Game Project" > README.md
	echo "" >> README.md
	echo "Date et heure de création : $$(date)" >> README.md
	echo "" >> README.md
	echo "Nombre de lignes dans guessinggame.sh : $$(wc -l < guessinggame.sh)" >> README.md

clean:
	rm README.md
