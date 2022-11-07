import express from "express";

const app = express()

app.get('/hello', (req, res) => res.send('Hello Simplon by gaetan'));

app.listen(3003, ()=> console.log("Application démarrée sur le port 3003"));