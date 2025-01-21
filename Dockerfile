# Utilisez une image de base avec Java installé
FROM openjdk:8-jdk

# Définissez le répertoire de travail
WORKDIR /app

# Copiez les fichiers nécessaires dans l'image Docker
COPY data /app/data
COPY jars /app/jars
COPY p-collaborative-filtering-job-1 /app/p-collaborative-filtering-job-1
COPY p-collaborative-filtering-job-2 /app/p-collaborative-filtering-job-2
COPY p-collaborative-filtering-job-3 /app/p-collaborative-filtering-job-3

# Exposez les ports nécessaires pour Hadoop
EXPOSE 8088 9870 9864

# Commande par défaut
CMD ["bash"]
