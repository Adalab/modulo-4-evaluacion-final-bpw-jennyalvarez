const express = require("express");
const cors = require("cors");

const app = express();
app.use(cors());
app.use(express.json());

// Importar rutas
const booksRoutes = require("./routes/books");
app.use("/books", booksRoutes);

app.listen(3000, () => {
    console.log("Servidor funcionando en puerto 3000");
});
