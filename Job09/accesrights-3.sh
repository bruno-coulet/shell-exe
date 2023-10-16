#!/bin/bash

# Crée une variable avec le chemin complet du fichier CSV
csv_file="/home/bruno/shell-exe/Job09/Shell_Userlist.csv"

# awk extrait les données de la deuxième colonne (à partir de la deuxième ligne)
awk -F ',' 'NR > 1 {print $2}' "$csv_file" | while IFS=, read -r username
do
  # Vérifiez si l'utilisateur existe déjà
  if id "$username" &>/dev/null; then
    echo "L'utilisateur $username existe déjà."
  else
    # Créez l'utilisateur s'il n'existe pas
    useradd -m "$username"
    echo "L'utilisateur $username a été créé avec succès."
  fi
done
