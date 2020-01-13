module.exports = (app, db) => {
  //Init
  const tableName = "topic";
  const table = db[tableName];
  const findAll = `/${tableName}`;
  const create = `/${tableName}`;
  const update = `/${tableName}/:id`;
  const del = `/${tableName}/:id`;

  //Query
  const arrayOfFields = [
    "exam_id",
    "name",
    "choice_a",
    "choice_b",
    "choice_c",
    "choice_d",
    "choice_e",
    "correct_choice"
  ];

  app.get(findAll, (req, res) => {
    table
      .findAll({})
      .then(result => {
        console.log(result);
        res.status(200).json(result);
      })
      .catch(err => {
        console.error(err);
        res.status(400).json({ message: err.message });
      });
  });

  app.post(create, (req, res) => {
    let obj = {};
    arrayOfFields.forEach(item => (obj[item] = req.body[item]));
    table
      .create(obj)
      .then(result => {
        console.log(`${tableName} created`);
        res.status(200).json(result);
      })
      .catch(err => {
        console.error(err);
        res.status(400).json({ message: err.message });
      });
  });

  app.put(update, (req, res) => {
    let obj = {};
    arrayOfFields.forEach(item => (obj[item] = req.body[item]));
    table
      .update(obj, { where: { id: req.params.id } })
      .then(result => {
        console.log(`${tableName} updated`);
        res.status(200).json(result);
      })
      .catch(err => {
        console.error(err);
        res.status(400).json({ message: err.message });
      });
  });

  app.delete(del, (req, res) => {
    table
      .destroy({ where: { id: req.params.id } })
      .then(result => {
        console.log(`${tableName} deleted`);
        res.status(200).json(result);
      })
      .catch(err => {
        console.error(err);
        res.status(400).json({ message: err.message });
      });
  });
};
