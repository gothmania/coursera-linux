no_files=$(ls -1 | wc -l)
response=0

function check_guess {
  if [[ response -lt no_files ]]
  then
    echo "Your guess is too low."
  elif [[ response -gt no_files ]]
  then
    echo "Your guess is too high."
  else
    echo "Congratulations. You are correct."
  fi
}

while [[ response -ne no_files ]]
do
  echo "Guess how many files are in this directory?"
  read response
  check_guess
done
