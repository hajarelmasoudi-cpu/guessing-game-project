#!/usr/bin/env bash
# File: guessinggame.sh

function get_file_count {
  local count=$(ls -1 | wc -l)
  echo "$count"
}

function ask_user {
  echo "Combien de fichiers se trouvent dans le répertoire actuel ?"
}

function play_game {
  local correct=$(get_file_count)
  local guess=-1

  while [[ $guess -ne $correct ]]
  do
    ask_user
    read guess

    if [[ $guess -lt $correct ]]
    then
      echo "Trop bas. Essaie encore."
    elif [[ $guess -gt $correct ]]
    then
      echo "Trop haut. Essaie encore."
    fi
  done

  echo "Félicitations ! Tu as trouvé le bon nombre : $correct"
}

play_game
