import express from 'express';

const app = express();

// This is for testing purposes only
app.get('/', (req, res) => {
  res.send('Hello world!');
});

app.post('/construction/derive', (req, res) => {
  // TODO
});

app.listen(8080, () => { 
  console.log('server listening to port 3000');
});
