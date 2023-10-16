# crée une variable pour affiche la date au format voulue
Date=$(date +'%d-%m-%Y-%H:%M')

# crée le fichier
touch /home/bruno/shell-exe/Job08/number_connection-$Date.txt

# Ajoute les permissions d'exécution au fichier
chmod +x /home/bruno/shell-exe/Job08/number_connection-$Date.txt

# Recherche et trie les connexions réussie de l'utilisateur dans les logs auth.log
# prend les 3 premières colonnes qui correspondent à l'horodatage
# élimine les doublons
# donne le nombre de lignes obtenue dans la variable connection
connections=$(grep "session opened for user bruno" /var/log/auth.log | awk '{print $1, $2, $3}' | sort | uniq | wc -l)

# modifie le fichier
$connections >>  /home/bruno/shell-exe/Job08/number_connection-$Date.txt
