<h1>Faker Install</h1>

**Faker** that allows you to create fake placeholder data to use in your applications.
This is used to make alot of fake data.
</br></br>

<a href =https://github.com/faker-js><b>GITHUB</b></a>

<h3><b>Install</b></h3>
You will need to use the following syntax when you install and require faker in your project:

Run this command in the terminal to install the package:

```shell
npm install @faker-js/faker --save-dev
```

Enter this code in your file to require it:

```shell
const { faker } = require('@faker-js/faker');
```

</br></br>

When you installing might encounter some warnings.

- They telling you that your project doesn't have a package.json file.
  You can safely ignore them as it is non-consequential at this point in the exercise.

</br>

- If you'd like to prevent the `warning messages` from occurring then you can simply create your app.js file in the project folder then run the command npm init -y which will create a corresponding package.json file.

</br></br>

<h3>Please note</h3>
If your container name is mysql then running the npm init -y command will automatically name your npm project mysql, also. This is problematic because a few lectures from now you will be installing the mysql npm package and it won't allow you to install that package to an npm project with the same name.

You will encounter an error like this:

    npm ERR! code ENOSELF
    npm ERR! Refusing to install package with name "mysql" under a package
    npm ERR! also called "mysql". Did you name your project the same
    npm ERR! as the dependency you're installing?

Simple Fix:

- All you need to do is open the package.json file that was created by the npm init -y
  - command and `change` the line that says: `"name": "mysql"`, to be: `"name": "mysql1"`
- <a href =https://www.loom.com/share/db336b7433164b8284c6248cddb4da1d>Demo</a>

## <br>

For more insight into `package-lock.json` created by `npm init -y command`.
<a href = https://medium.com/coinmonks/everything-you-wanted-to-know-about-package-lock-json-b81911aa8ab8>Click here</a>
