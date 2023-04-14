exports.verify = (req) => {
  return req.get('X-Auth-Token') == 'HuxVWKKjtKS7o9g9svdQ' ? true : false
}