## Description

Back-end and front-end (monolithic) of a calendar application using Ruby on Rails. Single month view of a calendar for the current month.

### Features & Requirements:
 - Reminder
 - - Ability to add a new “reminder” (max 30 chars) for a user entered day and time.
 - - Display reminders on the calendar view in the correct time order.
 - - Allow the user to select a color when creating a reminder and display it appropriately.
 - - Properly handle overflow when multiple reminders appear on the same date.
 - - Ability to edit reminders – including changing text, day and time & color.
 - - Ability to delete reminders.
 - - We need to persist the reminders in the database
 - Allow the user to choose any month other than the current month.

## Tutorial on how to run the application

### Prerequisites
The setups steps expect following tools installed on the system.

Git
Ruby 3.0.3
Rails 7.0.0
PostgreSQL 12.6

### Setup

1. Check out the repository
git clone https://gitlab.com/codelittinc/rails-interview-project-milleni-maya.git

2. Create database.yml file
Copy the sample database.yml file and edit the database configuration as required.
cp config/database.yml.sample config/database.yml

3. Create and setup the database
Run the following commands to create and setup the database.
rake db:create
rake db:migrate

4. Start the Rails server
You can start the rails server using the command given below.

rails s
And now you can visit the site with the URL http://localhost:3000 or http://127.0.0.1:3000/

### Deployed example on Heroku
https://interview-milleni-maya.herokuapp.com/

### Tests
Execute bundle exec rspec

### Improvement opportunities
1. Better UX for show, edit and delete reminders
2. Front-end tests
3. Implement the calendar without the simple calendar gem

### Inspirations
Design inspired by: https://codepen.io/peanav/pen/ulkof

## Documentation

### Goal
Single month view of a calendar (default current month) that allows the user to view, create, edit and delete reminders (max 30 chars) for a user-entered day and time.

### Acceptance criterias
1. [required] The reminder accepts a maximum of 30 characters
2. [required] The reminder must have a user-entered day and time
3. [optional] The user may select a color for the reminder
4. Show the current month by default with the reminders
5. Allow the user to choose any month other than the current month
6. Allow the user to create, delete or edit reminders
7. Properly handle overflow when multiple reminders appear on the same date.
8. Display reminders on the calendar view in the correct time order

### Assumptions
1. The user cannot create past date and time reminders
2. The reminder must have a user-entered start and end time
3. The reminder can start and end on different days as long as the start time has not passed
4. The description can't be nil or ""
5. End time can't be before start time

### Design choices due to restricted time and effort
1. No user control;
2. Simple color picker;
3. Use simple calendar gem. Simple Calendar is a well-maintained gem the does most of the work: https://github.com/excid3/simple_calendar
4. Simple design