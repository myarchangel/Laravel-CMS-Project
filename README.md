## About lsapp
This is a laravel CMS project. It contains a landing page and a blog site.

## How to install locally
To run on your local machine, you need to install XAMPP, Composer and Node Packet Manager on your computer.

**Step 1:** Start Apache and mySQL from the XAMPP Control Panel

**Step 2:** Copy the `lsapp` folder into `C:\xampp\htdocs`

**Step 3:** Copy the 'lsapp.sql' into 'C:\xampp'

**Step 4:** Click on *Shell* on the XAMPP Control Panel

**Step 5:** Type the following commands one after the other:
* `mysql -u root -p`

*(enter the password followed by the **enter** key)*
* `CREATE DATABASE lsapp;`
* `USE lsapp;`
* `SOURCE lsapp.sql;`
* `QUIT`
* `EXIT`

*(Alternatively, you can navigate to 'localhost/phpmyadmin' in your browser to create the database and import the contents of lsapp.sql there)*

**Step 6:** Open the file `lsapp\.env` with a text editor. In front of **DB_PASSWORD** put your password *(with no quotes)*.
