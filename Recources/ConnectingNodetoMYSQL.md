<h1>Note about connecting Node to MySQL</h1>

</br>

Hi Everyone!
Please read through carefully.

One very important thing to remember is your username for connecting to mysql will be root, Unless Changed

(see code example below):

```js
var mysql = require("mysql");

var connection = mysql.createConnection({
  host: "localhost",
  user: "root",
  database: "join_us",
});
```

</br>

---

Also, if your npm project is named "mysql" then you may encounter an error when trying to install the mysql npm package in the video that follows. The solution is simple, you can find it <a href = https://www.loom.com/share/db336b7433164b8284c6248cddb4da1d>here.</a>
