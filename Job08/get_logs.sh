# Recherche et trie les connexions réussie de l'utilisateur dans les logs auth.log
# prend les 3 premières colonnes qui correspondent à la date et l'heure
# élimine les doublons
# donne le nombre de lignes obtenue dans la variable connection
connections=$(grep "session opened for user bruno" /var/log/auth.log | awk '{print $1, $2, $3}' | sort | uniq | wc -l)

# crée une variable pour affiche la date au format voulue : date +'%d-%m-%Y-%H:%M'
Date=$(date +'%d-%m-%Y-%H:%M')

# Crée le fichier et ajoute le message
echo "L'utilisateur bruno s'est connecté $connections fois." >> "/home/bruno/shell-exe/Job08/number_connection-$Date"

# Ajoute les permissions d'exécution au fichier
chmod +x "/home/bruno/shell-exe/Job08/number_connection-$Date"

# archive le fichier crée dans le sous dossier Backup
tar -cvf /home/bruno/shell-exe/Job08/Backup/number_connection-$Date.tar number_connection-$Date

# Ajoute les permissions d'exécution au fichier
#chmod +x "/home/bruno/shell-exe/Job08/Backup/number_connection-$Date"
