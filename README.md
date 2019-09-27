<h1 align="center">BookmarkManager<h1>
<h2 align="center">A bookmark manager web application with database</h2>

1. **Language: Ruby**
2. **Testing: Rspec, Capybara**
3. **Linter: Rubocop**
4. **Database: psql**

This project uses BDD and the challenge is to;

1. Show a list of bookmarks, 
2. Add new bookmarks
3. Delete bookmarks
4. Update bookmarks
5. Comment on bookmarks
6. Tag bookmarks into categories
7. Filter bookmarks by tag
8. Users are restricted to manage only their own bookmarks

<h4 align="center">Project Set Up</h4>

To work on this project, do the following: Clone this repo, navigate to the bookmark-manager file and run bundle install to ensure the dependacies are loaded. 

<h4 align="center">Page Navigation</h4>

In order to run the app, go to the bookmark manager repo, run "rackup" and then go to the following:

1 To show the list of bookmarks go to http://localhost:9292/bookmarks

<h4 align="center">How to run the PSQL Database</h4>

* Connect to psql using *\c*
* Create the database using the psql command *CREATE DATABASE bookmark_ruby*
* Connect to the database using the pqsl command *\c bookmark_ruby*
* Run the query we have saved in the file *01_create_bookmarks_table.sql*

<h4 align="center">Manipulating Database data</h4>

* Show a list of records in the table *SELECT * FROM bookmarks;*
* Delete records from a database *DELETE FROM bookmarks WHERE url = 'http://www.steve.com';*
* Update records in a database *UPDATE bookmarks SET url = 'http://www.dave.com' WHERE url = 'http://www.steve.com';*
