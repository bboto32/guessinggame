function get_n_of_files {
  echo $(find . -maxdepth 1 -type f | wc -l)
}

n_file=$(get_n_of_files)

echo "How many files there are in the current directory? Enter your guess (and then press Enter):"
read guess

while [[ $guess -ne $n_file ]]
do
  if [[ $guess -gt $n_file ]]
    then
    echo "Your guess was too high. Try to guess again. Enter your guess (and then press Enter):"
  fi
  if [[ $guess -lt $n_file ]]
    then
    echo "Your guess was too low. Try to guess again. Enter your guess (and then press Enter):"
  fi
  read guess
done

echo "You got it! Contragulations!"