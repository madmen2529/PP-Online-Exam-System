const express = require("express");
const app = express();
const cors = require("cors");

const bodyParser = require("body-parser");
const db = require("./models");

const studentService = require("./services/student");
const teacherService = require("./services/teacher");
const examService = require("./services/exam");
const examRecordService = require("./services/exam_record");
const topicService = require("./services/topic");

// cors policy
app.use(cors());
// parse application/json
app.use(bodyParser.json());
//parse application/x-www-form-urlencoded
app.use(bodyParser.urlencoded({ extended: true }));

db.sequelize.sync({ force: false }).then(() => {
  studentService(app, db);
  teacherService(app, db);
  examService(app, db);
  examRecordService(app, db);
  topicService(app, db);

  app.listen(8080, () => {
    console.log("Server is running on port 8080");
  });
});
