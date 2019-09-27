<h1 align="center">BookmarkManager<h1>
<h2 align="center">A bookmark manager web application with database</h2>
  
<h4 align="center">A simple bookmark manager web application with postgres database</h4>

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

To work on this project, do the following: Clone this repo, navigate to the bookmark-manager file and run bundle install to ensure the dependacies are loaded. 

In order to run the app, go to the bookmark manager repo, run "rackup" and then go to the following:

To visit the list of bookmarks go to http://localhost:9292/bookmarks

* In order to run the database, connect to psql using *\c*
* Create the database using the psql command *CREATE DATABASE bookmark_ruby*
* Connect to the database using the pqsl command *\c bookmark_ruby*
* Run the query we have saved in the file *01_create_bookmarks_table.sql*
