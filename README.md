# rails-interview-project

## Instructions

The goal of this exercise is to create a demo calendar application Full stack Ruby on Rails.

## constraints

 - Do non't use a calendar library, we would like to see your own calendar logic.
 - Although we understand that scaffolding is one of the best capabilities of rails, we would like to see how you handle the creation of the files.
 Please avoid using a `rails g scaffold` or `rails g controller`. For models it is totally okay to use rails automations, after all we are not barbarians.


### The Task

You should start by rendering a single month view of a calendar for the current month – along with the lines of the calendar image in this project.

### Features & Requirements:

 - Ability to add a new “reminder” (max 30 chars) for a user entered day and time.
 - Display reminders on the calendar view in the correct time order.
 - Allow the user to select a color when creating a reminder and display it appropriately.
 - Properly handle overflow when multiple reminders appear on the same date.
 - Ability to edit reminders – including changing text, day and time & color.
 - Ability to delete reminders.
 - Expand the calendar to support more than the current month.

### Notes:

1. This is a coding activity and not a design activity. That’s not to say we don’t appreciate good design or that we don’t value those skills if you have them!
It’s just that it won’t have a high value when scoring this particular project.
2. Make sure to provide a tutorial on how to run your application
3. Feel free to use any database
4. Scaffold for tests and controllers aren't allowed, but it's encouraged for models


#### Bonus points:

1. If you add automated tests
2. If you provide a Docker image

## F.A.Q.

### How do you evaluate the exercise?
Our evaluation is based on many aspects, such as general approach adopted, quality of code, use of best practices, capabilities to keep the code simple and maintainable.

### How can I deliver the exercise?
To deliver the exercise, you should clone this repository and work on a new branch. When you'll consider it completed, just push the branch and open a Pull Request.