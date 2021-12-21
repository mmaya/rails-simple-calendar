## Instructions

The goal of this exercise is to create both the backend and frontend of a calendar application using Ruby on Rails.

### The Task

In this task we are building a single month view of a calendar for the current month – along with the lines of the calendar image in this project.

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

### Notes:

1. We appreciate good design, in this repository you have a reference picture, but you don't need to replicate it.
2. Make sure to provide a tutorial on how to run your application
3. Feel free to use any database
4. Scaffold for tests and controllers *aren't* allowed, but it's encouraged for models

## Evaluation
| Functionality     |                                                                | Possible Points |
|-------------------|----------------------------------------------------------------|-----------------|
|                   | Matches the proposed requirements                              |              20 |
|                   | Implements REST correctly                                      |              15 |
|                   | Separation of layers (Model, View, Controller).                |              15 |
|                   | Feature tests (it can be controller, services, requests, etc.) |              10 |
|                   | Models tests                                                   |              10 |
|                   | Input validations                                              |               5 |
|                   | Standard HTTP error codes                                      |               5 |
| **Code Quality**  |                                                                |                 |
|                   | Code formatting, readability, maintainability, etc             |               5 |
|                   | Folders and packages structure                                 |               5 |
| **DevOps**        |                                                                |                 |
|                   | Docker image to build/run the project                          |               5 |
| **Documentation** |                                                                |                 |
|                   | Documentation about the work done, how to run the project, etc |               5 |
| **Total**         |                                                                |             100 |


### Bonus Points:
1. If you deploy the application in any server and share the link with us
2. If provide thoughts on what you could improve on your code given more time and incentives

## F.A.Q.

### Is it necessary to build both the backend and frontend?
Yes

### How do you evaluate the exercise?
For every exercise we have two senior backend engineers from our team reviewing the code and the functionality and giving a score for each line item as shown in the previous table.

### How can I deliver the exercise?
To deliver the exercise, you should clone this repository and work on a new branch. When you'll consider it completed, just push the branch and open a Merge Request. Bonus points if you deploy it somewhere so we can check it running.

### Will I have access to the evaluation?
By default we only send the result, however you can feel free to request the full evaluation and we will share it with you as well as the final score.

## Tutorial on how to run the application

### Prerequisites
The setups steps expect following tools installed on the system.

Git
Ruby 2.7.2
Rails 6.1.4
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
And now you can visit the site with the URL http://localhost:3000

### Deployed example on Heroku

