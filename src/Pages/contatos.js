import {useState} from 'react';
import { Form, Button, Row } from 'react-bootstrap';
import '../components/contato/contato.css';


export default function Contatos(props) {
    const [form, setForm] = useState({
        nome: "",
        msg: "",
    });

    const controleMudanca = (evento) => {
        console.log(evento.target.value)
        setForm({
            ...form,
            [evento.target.id]: evento.target.value
        })
    }

    const controleEnvio = async () => {
        
        
        const json = JSON.stringify(form);
        const opcoes = {
            crossDomain: true,
            method: 'POST',
            headers: {
                'Access-Control' : 'Allow-Origin',
                'Content-Type': 'application/json',
                'Accept': 'application/json', 
            },
            body: json
        }
        const resposta = await fetch("http://localhost:8080/contatos", opcoes);
        const dados = await resposta.json()
        console.log(dados);
    }

    return (
        <Row>
            <div className="formulario">
            <div className="col-lg-6 col-md-6 mx-auto">
                <Form onSubmit={controleEnvio}>
                    <h4>Contatos</h4>
                    <Form.Group>
                        <Form.Label>Nome:</Form.Label>
                        <Form.Control onChange={controleMudanca} type="text" id="nome" />
                    </Form.Group>
                    <Form.Group>
                        <Form.Label>Mensagem:</Form.Label>
                        <Form.Control onChange={controleMudanca} type="text" id="msg" />
                    </Form.Group>
                    
                    <Button variant="primary" type="submit">
                        Enviar
                    </Button>
                </Form>
            </div>
            </div>
        </Row>

    );
}
 