const express = require('express');
const app = express();
const auth = require('./authentication');
const secret = require('./secret');

// cf. https://expressjs.com/en/api.html#app.settings.table
app.set('case sensitive routing', true);

app.use((req, res, next) => {
  // or case insensitive check: /^\/secret/i.test(req.url)
  // Regexp is probably not the right way to handle it
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
