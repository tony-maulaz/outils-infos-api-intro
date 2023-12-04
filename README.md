# Initiation à Node.js (Pas besoin si package.json est déjà présent)
- Pour créer le package.json : `npm init -y`
- Ajouter le package Express : `npm install express --save`
- Ajouter Nodemon pour le mode de surveillance : `npm install nodemon --save-dev`
- Ajouter Postgres : `npm install pg --save`

# Marche à suivre pour démarrer
- Démarrer le conteneur Docker : `docker-compose up -d`
- Initialiser la base de données : `docker exec db_api_person psql -U postgres -q -d mydb -f /code/create_person.sql`
- Se connecter au conteneur web : `docker exec -it api_person bash`
- Initialiser le projet : `npm install`

# Démarrer le serveur
- Démarrer le serveur avec le mode de watch : `npm run dev`
- Démarrer le serveur en mode normal : `npm run start`

# Installation de Postman
- Télécharger et installer Postman : [Télécharger Postman](https://www.postman.com/downloads/)
- Tester une requête GET : `http://127.0.0.1:3000/api/users`

- Tester une requête POST :
  - Choisir POST
  - Choisir Body
    - Choisir raw
    - Choisir JSON
    - Écrire : `{"name": "toto", "age": 20}`
    - Choisir Send

# Accès au serveur
- Accéder au serveur : `http://localhost:3000/`

# Arrêter le conteneur
- Arrêter le conteneur : `docker-compose down`

# À faire
- Tester les routes GET qui se trouvent dans le fichier API
  - http://127.0.0.1:3000/api/user/12
  - http://127.0.0.1:3000/api/user?id=12

Dans toutes les routes ci-dessous, il faut gérer les erreurs.

- Créer une route pour récupérer un utilisateur par son ID
- Créer une route pour récupérer la liste des utilisateurs
- Créer une route pour récupérer un utilisateur par son nom
- Créer une route pour récupérer un utilisateur par son ID avec son adresse
- Créer une route POST pour créer un utilisateur
- Créer une route pour supprimer un utilisateur par son ID
- Créer une route qui retourne le nombre d'utilisateurs et le nombre d'adresses.
