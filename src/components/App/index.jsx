/* dependencias e bibliotecas */
import React from 'react';
import { BrowserRouter } from 'react-router-dom';
import { Container } from 'react-bootstrap';

import Rotas from '../rotas';
import './style.css';
import {lazy, Suspense} from 'react';

/* componentes */

const Menu = lazy(() => import('../Menu'));
const Logo = lazy(() => import('../Logo'));
const Footer = lazy(() => import('../Footer'));



function App() {
  return (
    <>
      <BrowserRouter>
        <div className="App">

          <header>
            <Suspense fallback={<p>Carregando...</p>}>
              <Menu />
            </Suspense>

            <Suspense fallback={<p>Carregando...</p>}>
              <Logo />
            </Suspense>


            </header>

          <main>
            <Container fluid>
              <Rotas />
            </Container>
          </main>

          <Suspense fallback={<p>Carregando...</p>}>
            <Footer />
          </Suspense>

          
        </div>

      </BrowserRouter>
    </>
  );
}

export default App;

