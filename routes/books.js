const express = require("express");
const router = express.Router();
const db = require("../bd/conexion");

// LISTAR LIBROS - get
router.get("/", (req, res) => {
    db.query("SELECT * FROM books", (err, result) => {
        if (err) return res.json(err);
        res.json(result);
    });
});

// INSERTAR LIBRO - post
router.post("/", (req, res) => {
    const { title, author, year } = req.body;
    db.query(
        "INSERT INTO books (title, author, year) VALUES (?, ?, ?)",
        [title, author, year],
        (err) => {
            if (err) return res.json(err);
            res.json({ success: true });
        }
    );
});

// ACTUALIZAR LIBRO - put
router.put("/:id", (req, res) => {
    const { title, author, year } = req.body;
    const { id } = req.params;

    db.query(
        "UPDATE books SET title=?, author=?, year=? WHERE id=?",
        [title, author, year, id],
        (err) => {
            if (err) return res.json(err);
            res.json({ success: true });
        }
    );
});

// ELIMINAR LIBRO - delete
router.delete("/:id", (req, res) => {
    const { id } = req.params;
    db.query("DELETE FROM books WHERE id=?", [id], (err) => {
        if (err) return res.json(err);
        res.json({ success: true });
    });
});

module.exports = router;
