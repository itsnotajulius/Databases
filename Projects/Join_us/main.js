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

/*INSTERTING DATA TAKE 2
var q = { email: "matjulgaming@gmail.com" };

connection.query(
  "INSERT INTO users SET ?",
  q,
  function (error, results, fields) {
    if (error) throw error;
    console.log("The solution is: ", results);
  }
);
*/

/*INSERTING DATA TAKE 3
var s = "SELECT * FROM users";
var insertStatmenmt = "INSERT INTO users SET ?";
var person = { email: faker.internet.email() };

connection.query(insertStatmenmt, person, function (error, results, fields) {
  if (error) throw error;
});

connection.query(s, function (error, results, fields) {
  if (error) throw error;
  for (var i = 0; i < results.length; i++) {
    console.log(results[i].email);
  }
  console.log(results.length);
});
*/

/*INSTERTING DATA TAKE 4
var s = "SELECT * FROM users";
var insertStatmenmt = "INSERT INTO users (email,created_at) VALUES ?";
var data = [];

for (let index = 0; index < 500; index++) {
  data.push([faker.internet.email(), faker.date.past()]);
}

connection.query(insertStatmenmt, data, function (error, results, fields) {
  if (error) throw error;
  console.log(results);
});
*/

//INSERTING DATA TAKE 5
var s = "SELECT * FROM users";
var del = "DELETE FROM users";
var insertStatmenmt = "INSERT INTO users (email,created_at) VALUES ?";
var data = [];

for (let index = 0; index < 500; index++) {
  data.push([faker.internet.email(), faker.date.past()]);
}

connection.query(insertStatmenmt, [data], function (error, results, fields) {
  if (error) throw error;
  console.log(results);
});

connection.query(s, function (error, results, fields) {
  if (error) throw error;
  console.log(results);
});

connection.end(function (err) {
  // The connection is terminated now
});
