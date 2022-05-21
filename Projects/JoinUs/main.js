// Making connections to the NPM faker and mysql. Look in Resources for how to set them up

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
  "SELECT CASE WHEN email LIKE ? THEN 'gmail' WHEN email LIKE ? THEN 'yahoo' WHEN email LIKE ? THEN 'hotmail' ELSE 'other' END AS provider, COUNT(*) AS total_users FROM users GROUP BY provider ORDER BY total_users DESC";
var $gmail = "%gmail%";
var $yahoo = "%yahoo%";
var $hotmail = "%hotmail%";

connection.query(
  q,
  [$gmail, $yahoo, $hotmail],
  function (error, results, fields) {
    if (error) throw error;
    console.log(results);
  }
);

connection.end(function (err) {
  // The connection is terminated now
});
