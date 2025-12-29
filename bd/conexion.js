const mysql = require("mysql2");

const db = mysql.createConnection({
    host: "localhost",
    user: "root",
    password: "jennyalvarez",
    database: "libreria"
});

db.connect(err => {
    if (err) console.log("Error de conexión");
    else console.log("Conectado a MySQL");
});

module.exports = db;
