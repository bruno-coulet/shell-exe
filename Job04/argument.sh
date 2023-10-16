# Récupère les noms des fichiers à partir des arguments
nouveau_fichier="$1"
fichier_source="$2"

# Copie le contenu du fichier source dans le nouveau fichier en utilisant la redirection
cat "$fichier_source" > "$nouveau_fichier"


