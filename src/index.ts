import express from "express";
require('dotenv');

const app = express()

app.get('/hello', (req, res) => res.send('Hello Simplon by gaetan'));
app.get('/testDocker', (req, res) => res.send('Hello test Docker' + process.env.id));

app.listen(3003, ()=> console.log("Application démarrée sur le port 3003"));