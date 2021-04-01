Specs:

 [x]Use Sinatra to build the app
 [x]Use ActiveRecord for storing information in a database - used activerecord to create table migrations for users and npcs.
 [x]Include more than one model class (e.g. User, Post, Category) - 2 models, a User and an NPC model.
 [x]Include at least one has_many relationship on your User model (e.g. User has_many Posts) - User has_many npcs
 [x]Include at least one belongs_to relationship on another model (e.g. Post belongs_to User) - Npcs belongs_to user
 [x]Include user accounts with unique login attribute (username or email) - User can signup/login with email and password & user class validates uniqueness of their username,email & password.
 [x]Ensure that the belongs_to resource has routes for Creating, Reading, Updating and Destroying - Can create, see all or one, edit, and delete npcs.
 [x]Ensure that users can't modify content created by other users - used current_user in controller so users cant see/edit/delete npcs that aren't theirs.
 [x]Include user input validations - Used validate_presence_of for username, password, & password confirmation in user class.
 [x]BONUS - not required - Display validation failures to user with error message (example form URL e.g. /posts/new) - used rack-flash to create errors for signup/login views
 [x] Your README.md includes a short description, install instructions, a contributors guide and a link to the license for your code

Confirm

 You have a large number of small Git commits
 Your commit messages are meaningful
 You made the changes in a commit that relate to the commit message
 You don't include changes in a commit that aren't related to the commit message