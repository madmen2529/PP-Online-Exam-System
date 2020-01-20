const mdlName = "exam_record";

module.exports = (sequelize, DataTypes) => {
  const mdl = sequelize.define(mdlName, {
    selected_choice: DataTypes.ENUM("A", "B", "C", "D", "E")
  });

  mdl.associate = function(models) {
    mdl.belongsTo(models.student, { foreignKey: "student_id" });
    mdl.belongsTo(models.exam, { foreignKey: "exam_id" });
    mdl.belongsTo(models.topic, { foreignKey: "topic_id" });
  };

  return mdl;
};
