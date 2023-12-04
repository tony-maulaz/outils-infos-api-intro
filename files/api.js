const express = require('express');
const router = express.Router();
const db = require('./pg');

// Définissez des routes pour ce module
router.get('/', (req, res) => {
  res.send('Bienvenue dans le module API !');
});

router
    .get('/users',
        async (req, res) => {
            const result = await db.query('select * from persons');
            res.json(result.rows);
        })

// http://127.0.0.1:3000/api/user?id=12
router
    .get('/user', (req, res) => {
        console.log(req.query.id)
        const data = {val: 12}
        res.json(data)
    })

// http://127.0.0.1:3000/api/user/12
router
    .get('/user/:id',
        async (req, res) => {
            console.log(req.params)
            const result = await db.query('select tutu from table where city =$1', [req.params.id]);
            res.json(result.rows);
        })

// Traitement d'une requête POST avec comme url : http://127.0.0.1:3000/user
router
    .post('/user', express.json(), (req, res) => {
            console.log(req.body)
            console.log("Id : " + req.body.id)
            res.json(req.body)
        })

// exports, est un objet commun qui permet d'exporter des données ou fonctions
module.exports = router;
// or exports.router = router;