const mdlName = "exam_record";

module.exports = (sequelize, DataTypes) => {

  const mdl = sequelize.define(mdlName, {
    exam_id: DataTypes.INTEGER,
    user_id: DataTypes.INTEGER,
    name: DataTypes.STRING,
    choice_a: DataTypes.STRING,
    choice_b: DataTypes.STRING,
    choice_c: DataTypes.STRING,
    choice_d: DataTypes.STRING,
    choice_e: DataTypes.STRING,
    correct_choice: DataTypes.STRING
  })

  mdl.associate = function (models) {
    mdl.belongsTo(models.student, {foreignKey:"student_id"})
    mdl.belongsTo(models.exam, {foreignKey:"exam_id"})
  };

  return mdl
}