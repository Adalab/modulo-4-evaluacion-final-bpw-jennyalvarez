const express = require("express");
const cors = require("cors");
const db = require("./bd/conexion");
const jwt = require("jsonwebtoken");
const bcrypt = require("bcryptjs");

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

function auth(req, res, next) {
    const token = req.headers.authorization;
    if (!token) return res.status(401).json({ message: "No autorizado" });

    jwt.verify(token, "secretkey", (err, decoded) => {
        if (err) return res.status(401).json({ message: "Token inválido" });
        req.userId = decoded.id;
        next();
    });
}


// ENDPOINTS DE AUTENTICACIÓN

// Register endpoint

app.post("/registro", async (req, res) => {
    const { user, password, nombre } = req.body;

    const hash = await bcrypt.hash(password, 10);
    const query = "INSERT INTO usuarias (email, nombre, password) VALUES (?, ?, ?)";
    db.query(query, [user, nombre, hash], (err) => {
        if (err) return res.json({ success: false, error: err });

        const token = jwt.sign({ user }, "secretkey", { expiresIn: '1h' });
        res.json({ success: true, message: "Registro correcto", token });
    });
});



// Login endpoint




app.post("/login", (req, res) => {
    const { user, password } = req.body;

    
    const query = "SELECT * FROM usuarias WHERE email = ?";
    db.query(query, [user], async (err, result) => {
        if (err) return res.json({ success: false, error: err });
        if (result.length === 0) return res.json({ success: false, message: "Usuario no existe" });

    
        const valid = await bcrypt.compare(password, result[0].password);
        if (!valid) return res.json({ success: false, message: "Contraseña incorrecta" });

      
        const token = jwt.sign({ id: result[0].id }, "secretkey", { expiresIn: '1h' });
        res.json({ success: true, message: "Login correcto", token });
    });
});


app.listen(3000, () => {
    console.log("Servidor funcionando en puerto 3000");
});
