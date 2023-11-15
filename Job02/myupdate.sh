#!/bin/bash
# ceci est un commentaire, la ligne du dessus est un shibang qui indique à linux quek interpreteur utiliser.

# ci dessous le code en une seule ligne
# le && indique que si l'instruction d'avant && est éxécutée correctement, il faut alors executer l'instruction après && :

sudo apt update && sudo apt upgrade

# ci dessous l'ancien code en 2 lignes, il n'en fallait qu'une pour répondre à l'exercice :
sudo apt update
sudo apt upgrade
