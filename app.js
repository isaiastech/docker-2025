const express = require('express');
const app = express();
const port = 3000;

app.get('/', (req, res) => {
  res.send('Olá Minha Imagem de Teste!');
});

app.listen(port, () => {
  console.log(`Executando na porta:${port}`);
});

