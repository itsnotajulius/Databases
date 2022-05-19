// Making connections to the NPM faker and mysql. Look in Resources for how to set them up

const { faker } = require("@faker-js/faker");
var mysql = require("mysql");

//Connecting to database
var connection = mysql.createConnection({
  host: "localhost",
  user: "root", // your root username
  database: "join_us", // the name of your db
});

//Defining query

connection.connect(function (err) {
  if (err) {
    console.error( 'error connecting: '+ err.stack);
    return;
  }

  console.log('connected as id'+ connection.threadId);
};
