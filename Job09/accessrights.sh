#Créer un script nommé accessrights.sh qui récupère les informations des utilisateurs
#à partir de ce fichier CSV et les crée sur votre système.

# Extrait les données du fichier CSV et les stocke dans des variables
#readarray -t tableau < <(awk -F, 'NR>1 {print $1, $2, $3, $4, $5, $6, $7, $8, $9, $10}' /home/bruno/shell-exe/Job09/Shell_Userlist.csv)


# Affiche les données stockées dans les variables
#for i in "${!nom[@]}"; do
#  echo "Ligne $((i + 2)): Nom : ${nom[i]}, Prénom : ${prenom[i]}, Âge : ${age[i]}"
#done





#J'essaie de télécharger le fichier via le shell en le nommant avec le suffix -alt pour ne pas confondre  CA MARCHE PAS
#	https://drive.google.com/file/d/XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX/view?usp=sharing
#	 l'ID est la partie qui suit /d/ 	et se termine avant	/view
#      https://drive.google.com/uc?id=ID_DU_FICHIER
wget  'https://drive.google.com/uc?id=1sUYmj2nO_SlWltTETR6gGCpB4krYGSau' -O Shell_Userlist-alt.csv


# tail enlève la première ligne, cut extrait 5 colonnes du fichier télécharge via le navigateur
tail -n +2 Shell_Userlist.csv | cut -d ',' -f 1,2,3,4,5 Shell_Userlist.csv


# récupere les infos
id=$(awk -F, '{print $1}' Shell_Userlist.csv)
#prenom=$(awk -F, '{print $2}' Shell_Userlist.csv)
#nom=$(awk -F, '{print $3}' Shell_Userlist.csv)
#mdp=$(awk -F, '{print $4}' Shell_Userlist.csv)
#role=$(awk -F, '{print $5}' Shell_Userlist.csv)
echo "$id"
# crée les utilisateurs correspondant sur notre shellsudo adduser nom-utilisateur

#sudo adduser id

