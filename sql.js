var mysql = require('mysql2')
var db = mysql.createConnection({
    host: "localhost",
    user: "root",
    password: "root",
    database: "demo1"

});

db.connect();
module.exports = db;

