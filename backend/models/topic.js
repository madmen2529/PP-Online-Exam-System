const mdlName = "topic";

module.exports = (sequelize, DataTypes) => {
  const mdl = sequelize.define(mdlName, {
    name: DataTypes.STRING,
    choice_a: DataTypes.STRING,
    choice_b: DataTypes.STRING,
    choice_c: DataTypes.STRING,
    choice_d: DataTypes.STRING,
    choice_e: DataTypes.STRING,
    correct_choice: DataTypes.STRING
  });

  mdl.associate = function(models) {
    mdl.belongsTo(models.exam, { foreignKey: "exam_id" });
    mdl.belongsTo(models.teacher, { foreignKey: "teacher_id" });
  };

  return mdl;
};
