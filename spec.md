# Specifications for the Sinatra Assessment

Specs:
- [x] Use Sinatra to build the app

None of this would work without it!

- [x] Use ActiveRecord for storing information in a database

The migrations and models all inherit from ActiveRecord. 

- [x] Include more than one model class (e.g. User, Post, Category)

This project includes 3: the User model, the Game model, and the Console model.

- [x] Include at least one has_many relationship on your User model (e.g. User has_many Posts)

A user has_many games and consoles. A console has many games.

- [x] Include at least one belongs_to relationship on another model (e.g. Post belongs_to User)

A game belongs_to both a user and a console, and a console belongs_to a user.

- [x] Include user accounts with unique login attribute (username or email)

Users are returned to the login screen if they entered a username or email that's already in use

- [x] Ensure that the belongs_to resource has routes for Creating, Reading, Updating and Destroying

Both belongs_to resources have individual routes.

- [x] Ensure that users can't modify content created by other users

Users who did not create the original content cannot even see the edit or delete buttons required to view the edit or delete forms. In addition, if they try to go to the links directly they are redirected.

- [x] Include user input validations

Checks and authenticates user input. If it fails you're redirected to login again.

- [ ] BONUS - not required - Display validation failures to user with error message (example form URL e.g. /posts/new)

- [x] Your README.md includes a short description, install instructions, a contributors guide and a link to the license for your code

Confirm
- [x] You have a large number of small Git commits
- [x] Your commit messages are meaningful
- [x] You made the changes in a commit that relate to the commit message
- [x] You don't include changes in a commit that aren't related to the commit message
