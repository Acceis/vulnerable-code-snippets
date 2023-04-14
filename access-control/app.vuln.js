const express = require('express');
const app = express();
const auth = require('./authentication');
const secret = require('./secret');

app.use((req, res, next) => {
  if (req.url.startsWith('/secret')) {
    const authorized = auth.verify(req);
    if (!authorized) {
      return res.status(401).send('Incorrect authentication token!');
    }
  }
  next();
});

app.use('/secret', secret);

app.listen(4242);
