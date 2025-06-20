var mysql = require('mysql2')
var db = mysql.createConnection({
    host: "localhost",
    user: "root",
    password: "Root001!",
    database: "demo1"

});

db.connect();
module.exports = db;

