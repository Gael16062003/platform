# Utilisation d'une image de base avec Python
FROM python:3.9-slim-buster

# Mettre à jour les packages système
RUN apt-get update && apt-get upgrade -y && apt-get autoremove && apt-get autoclean

# Définir le répertoire de travail
WORKDIR /app

# Copier les fichiers du répertoire actuel vers le conteneur
COPY . /app

# Installer les packages Python
# RUN pip install --no-cache-dir -r requirements.txt

# Exposer le port utilisé par l'application
EXPOSE 9000

# Définir la commande à exécuter lorsque le conteneur démarre
CMD ["python", "main.py"]
