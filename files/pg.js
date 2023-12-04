const {Pool} = require('pg');
const pool = new Pool();

// Pour facilité les requêtes, utiliser un schéma par défaut
pool.on('connect', client => {
    console.log('Client connected to postgresql');
    client.query('set search_path to api_person')
});

module.exports = {
    query: (text, params) => {
        return pool.query(text, params)
    }
};