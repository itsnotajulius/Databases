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

/*SELECTING DATA

//Defining query
var query = "SELECT 1+1 AS solution";

//Querying the database
connection.query(query, function (error, results, fields) {
  if (error) throw error;
  console.log("The solution is: ", results[0].solution);
});
*/

/*INSERTING DATA TAKE 1
var q = "INSER INTO users(emails) VALUES (rusty@gamil.com)";

connection.query(q, function (error, results, fields) {
  if (error) throw error;
  console.log("The solution is: ", results);
});
*/

//INSTERTING DATA TAKE 2
var q = { email: "matjulgaming@gmail.com" };

connection.query("SELECT 1 + 1 AS colName", function (error, results, fields) {
  if (error) throw error;
  console.log("The solution is: ", results[0].colName);
});

connection.end(function (err) {
  // The connection is terminated now
});
