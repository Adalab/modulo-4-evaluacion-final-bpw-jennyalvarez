const express = require("express");
const cors = require("cors");
const db = require("./bd/conexion");

const app = express();
app.use(cors());
app.use(express.json());

// Importar rutas
const booksRoutes = require("./routes/books");
app.use("/books", booksRoutes);

// Ruta raíz que devuelve todos los libros
app.get("/", (req, res) => {
    db.query("SELECT * FROM books", (err, result) => {
        if (err) return res.json(err);
        res.json(result);
    });
});




app.listen(3000, () => {
    console.log("Servidor funcionando en puerto 3000");
});
