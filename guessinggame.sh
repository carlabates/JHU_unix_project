
file_no=$(ls -l | wc -l)

function ask {
	echo "How many files are in this folder?"
	read response
}

function highlow {
	if [[ $response  -gt  $file_no ]]
	then
		echo  "You have guessed too high.  Try again"
	elif  [[ $response -lt $file_no ]]
	then
		echo "You have guessed too low. Try again."
	else [[ $response -eq $file_no ]]
		echo "What a great guess!"
	fi
}

ask

highlow $response

while [[ $response != $file_no ]]
do
	ask
	highlow $response
done
