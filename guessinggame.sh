function ask {
	echo "How many files are in this folder?"
	read response
}

function highlow {
	if [[ $response  -gt  3 ]]
	then
		echo  "You have guessed too high.  Try again"
	elif  [[ $response -lt 3 ]]
	then
		echo "You have guessed too low. Try again."
	else [[ $response -eq 3 ]]
		echo "What a great guess!"
	fi
}

ask

highlow $response

while [[ $response != 3 ]]
do
	ask
	highlow $response
done
