const express = require('express')
const app = express()

// Importez le module API
const monModuleApi = require('./api')

const port = 3000

// Middleware pour servir les fichiers statiques (HTML, CSS)
app.use(express.static(__dirname))

// Définition de la route de base du module API
app.use('/api', monModuleApi)
app.use(express.json())

// Route pour la page d'accueil
app.get('/', (req, res) => {
  res.sendStatus(404)
})

// Écoutez le serveur sur le port 3000
app.listen(port, () => {
  console.log(`Le serveur Express écoute sur le port ${port}`)
})
