const express = require('express')
const router = express.Router()

router.get('/', (_req, res) => {
  res.send('FLAG{sVFVfcuQwQ5sf7QKtNpH}')
})

module.exports = router