module.exports = (app, db) => {
  const table = db.tableName;
  const tableName = "/tableName";
  const findAll = tableName+"s";
  const create = tableName;
  const update = tableName+"/:id";
  const del = tableName+"/:id";

  app.get(findAll, (req, res) => {
    table.findAll({
      // order: [
      //   ['id', 'DESC'],
      // ],
      // include: [{
      //   model: db.comment
      // }]
    })
    .then(result => {
      console.log(result);
      res.status(200).json(result)
    })
    .catch(err => {
      console.error(err);
      res.status(400).json({ message: err.message })
    })
  })

  app.post(create, (req, res) => {
    table.create({
      //field here
    })
    .then(result => {
      console.log(result);
      res.status(200).json(result)
    })
    .catch(err => {
      console.error(err);
      res.status(400).json({ message: err.message })
    })
  })

  app.put(update, (req, res) => {
    table.update({
      //fields here
    }, { where: { id: req.params.id } })
      .then(result => {
        console.log(result);
        res.status(200).json(result)
      })
      .catch(err => {
        console.error(err);
        res.status(400).json({ message: err.message })
      })
  })

  app.delete(del, (req, res) => {
    table.destroy({ where: req.params.id })
      .then(result => {
        console.log(result);
        res.status(204).json()
      })
      .catch(error => {
        console.error(err);
        res.status(400).json({ message: error.message })
      })
  })

}