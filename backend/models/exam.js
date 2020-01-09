const mdlName = "exam";

module.exports = (sequelize, DataTypes) => {

  const mdl = sequelize.define(mdlName, {
    name: DataTypes.STRING,
    type: DataTypes.STRING,
    total_score: DataTypes.INTEGER,
    description: DataTypes.TEXT,
  })

  mdl.associate = function (models) {
    mdl.hasMany(models.topic)
    mdl.hasMany(models.exam_record)
    mdl.belongsTo(models.teacher, {foreignKey: "teacher_id"})
  };

  return mdl
}