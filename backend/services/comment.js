module.exports = (app, db) => {
  app.get('/comments', (req, res) => {
    db.comment.findAll()
      .then(result => {
        res.status(200).json(result)
      })
  })

  app.post('/comment', (req, res) => {
    db.comment.create({
      author: req.body.author,
      text: req.body.text,
      post_id: req.body.post_id
    })
      .then(result => {
        res.status(200).json(result)
      })
      .catch(error => {
        res.status(400).json({ message: error.message })
      })
  })

  app.delete('/comment/:id', (req, res) => {
    db.comment.destroy({ where: req.params.id })
      .then(result => {
        res.status(204).json()
      })
      .catch(error => {
        res.status(400).json({ message: error.message })
      })
  })

  app.put('/comment/:id', (req, res) => {
    db.comment.update({
      author: req.body.author,
      text: req.body.text,
      post_id: req.body.post_id
    }, { where: { id: req.params.id } })
      .then(result => {
        res.status(200).json(result)
      })
      .catch(error => {
        res.status(400).json({ message: error.message })
      })
  })
}