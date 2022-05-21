// Making connections to the NPM faker and mysql. Look in Resources for how to set them up

const { faker } = require("@faker-js/faker");
var mysql = require("mysql");

//Connecting to database
var connection = mysql.createConnection({
  host: "localhost",
  user: "root", // your root username
  database: "join_us", // the name of your db
});

//Defining the connection and catching errors
connection.connect(function (err) {
  if (err) {
    console.error("error connecting: " + err.stack);
    return;
  }

  console.log("connected as id" + connection.threadId);
});

var q =
  "SELECT created_at AS ealiest_date FROM users ORDER BY ealiest_date LIMIT 1";

connection.query(q, function (error, results, fields) {
  if (error) throw error;
  console.log(results);
});

connection.end(function (err) {
  // The connection is terminated now
});
