const mdlName = "student";

module.exports = (sequelize, DataTypes) => {

  const mdl = sequelize.define(mdlName, {
    username: DataTypes.STRING,
    password: DataTypes.STRING,
    firstname: DataTypes.STRING,
    lastname: DataTypes.STRING,
    gender: DataTypes.ENUM("M", "F"),
  })

  mdl.associate = function (models) {
    mdl.hasMany(models.exam_record)
  };

  return mdl
}