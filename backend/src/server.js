import express from 'express';
import cors from 'cors';
import mysql from 'mysql';

/* retorno da atribuição para variável server */
const server = express();

/* midware da aplicação - configuração da aplicação */
server.use(express.json());
server.use(cors( ));


/* Criando conexão com o banco de dados */
const connection = mysql.createConnection({
    host:"localhost",
    user: "root",
    password:"",
    database:"fseletro"
});

server.get("/produtos", (req, res) => {
    connection.query("SELECT * FROM produto", (error, result) => {
        if (error) {
            res.send(error)
        }
        else {
            res.send(result)
        }
    })
});

server.post("/contatos", (req, res) => {
    const { nome } = req.body;
    const { msg } = req.body;
    
    connection.query(`INSERT INTO contatos(nome, msg) values('${nome}', '${msg}')`, (error, result) => {
        if (error) {
            res.send(error)
        }
            else {
                res.send("usuario cadastrado").status(201)
        }
    })
})

server.listen(8080);

