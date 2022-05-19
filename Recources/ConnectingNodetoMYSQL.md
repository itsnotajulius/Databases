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

Also, if your npm project is named "mysql" then you may encounter an error when trying to install the mysql npm package in the video that follows. The solution is simple, you can find it <a href = >here.

Please note, if you signed up for Goorm before October 29th, then see here for how to connect to MySQL with Node.

If you haven't signed up for Goorm yet, please refer back to lecture 12 for instructions.

Last, but not least, you may notice that the output of the code that Colt uses in the next lecture will be different than what you see when you run your own code.
For example, Colt's output in the video will look like this:

01:01:29
Mon May 01 2017 00:00:00 GMT+0000 (UTC)
Mon May 01 2017 01:01:29 GMT+0000 (UTC)
While yours may look more like this:

20:30:51
2020-05-05T00:00:00.000Z
2020-05-05T20:30:51.000Z
This is due to the older version of node that Colt used when he made the course.

If you want your output to look like his, the fix is simple.
change the following code:

console.log(results[0].time);
console.log(results[0].date);
console.log(results[0].now);
to:

console.log(results[0].time);
console.log(results[0].date.toString());
console.log(results[0].now.toString());
All of the code above will be explained in the next lecture.

If you have any questions, please ask them in the course Q&A or visit our Discord server and ask them there.

---

Thanks,
Ian

P.S.

We do not recommend using AWS for this course, but if you are using the AWS version of Cloud9 then you'll need to skip to the note at the bottom of this lecture to see how to add a password to the MySQL connection code.

Once you've reviewed the extra steps then you can circle back and watch the Connecting Node to MySQL lecture, just be sure to add in the root password as described in the link/lecture above.
