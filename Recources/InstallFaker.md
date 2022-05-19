<h1>Faker Install</h1>

You will need to use the following syntax when you install and require faker in your project:

<br>
Run this command in the terminal to install the package:

> npm install @faker-js/faker --save-dev

Enter this code in your file to require it:

> const { faker } = require('@faker-js/faker');

<br><br>

Faker that allows you to create fake placeholder data to use in your applications.
When you installing might encounter some warnings.

They telling you that your project doesn't have a package.json file.
You can safely ignore them as it is non-consequential at this point in the exercise.

<br>

If you'd like to prevent the warning messages from occurring then you can simply create your app.js file in the project folder then run the command npm init -y which will create a corresponding package.json file.

Please note, if your container name is mysql then running the npm init -y command will automatically name your npm project mysql, also. This is problematic because a few lectures from now you will be installing the mysql npm package and it won't allow you to install that package to an npm project with the same name.

You will encounter an error like this:

    npm ERR! code ENOSELF
    npm ERR! Refusing to install package with name "mysql" under a package
    npm ERR! also called "mysql". Did you name your project the same
    npm ERR! as the dependency you're installing?

Fortunately, the fix is simple. All you need to do is open the package.json file that was created by the npm init -y

command and change the line that says: "name": "mysql", to be: "name": "mysql1",

See here for a quick demo of the issue, as well as the fix.

---

Thanks,
Ian

P.S. If you're wondering what the package-lock.json file is, that was automatically created when you ran the npm init -y command, see here to learn all about it.
