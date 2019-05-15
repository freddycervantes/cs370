# CS370 
[![Build Status](https://travis-ci.org/alvinnguyen116/cs370.svg?branch=master)](https://travis-ci.org/alvinnguyen116/cs370)
[![Maintainability](https://api.codeclimate.com/v1/badges/0982c9e5f4bf12723c62/maintainability)](https://codeclimate.com/github/alvinnguyen116/cs370/maintainability)
[![Test Coverage](https://api.codeclimate.com/v1/badges/0982c9e5f4bf12723c62/test_coverage)](https://codeclimate.com/github/alvinnguyen116/cs370/test_coverage)

Live app: https://cs370-tutoring.herokuapp.com/

## Description:
The application is meant to facilitate tutoring session for cs370.

If you are a student, with the web application you will be able to do the following:
* Feature 1: Create and edit user profile
* Feature 2: Monitor tutoring session history
* Feature 3: Evaluate your tutor and give constructive feedback.
* Feature 4: Request for a tutor and monitor weekly requests.
* Feature 5: Log in via password and email

If you are a tutor, you will be able to do the following:
* Feature 1: Create and edit user profile
* Feature 2: Select a preferred student you would like to tutor.
* Feature 3: Email the student to set up a meeting.
* Feature 4: Monitor hours worked and view ratings generated by students.
* Feature 5: Log in via email

If you are an admin, you will be able to do the following:
* Feature 1: Set semester and list of courses you are offering for tutoring
* Feature 2: Generate a table with list of tutors and hours worked
* Feature 3: Generate composite score for tutors
* Feature 4: Set privilege for students by simply entering their student sid
* Feature 5: Change admin password

## Requirements
* Rails 5.2.3
* PostgresSQL

If you need help setting up a Ruby development environment, check out this [guide](https://mattbrictson.com/rails-osx-setup-guide)

## Setting Up and Testing
Run the following command in CS370 directory:
```
bundle install --without production
```
This will download any files along with gems in order to make the app run properly.

```
rails db:reset
rails db:migrate
rails server
```
This will launch the server.
* You may need to set up admin credential locally first in order to access admin page.
Do the following:
```
rails c
````
This opens the Rails development enviroment. For example:
```
Running via Spring preloader in process 89006
Loading development environment (Rails 5.2.3)
2.5.3 :001 > 
```
Now, you will have to initialize an Admin object by the following line:
```
Admin.create(:password => "whatever_password_you_want", :current_semester => "Spring2019", :statistics_semester => "Spring2019")
```
Lastly, in order to view coverage and run tests. Do:
```
cucumber
```
and/or
```
rspec
```
## What's included?
**These gems are added to the standard Rails stack**
* Core
* Configuration
* Utilities
* Security
    * [friendly_id](https://github.com/norman/friendly_id) - Allows evaluations to be edited publicly
    * [devise](https://github.com/plataformatec/devise) - Log int authentication system in place
* Testing
    * [simplecov](https://github.com/colszowka/simplecov) - Code coverage reports
    * [database_cleaner](https://github.com/DatabaseCleaner/database_cleaner) - Use case was to ensure a clean state during tests.
    * [rails_12factor](https://github.com/heroku/rails_12factor) - Writes better error logs
    * [cucumber-rails](https://github.com/cucumber/cucumber-rails) - Used for writing tests with stories and integration tests
    * [rspec](https://rspec.info) - Allows to write unit and function tests
* Beautifying
    * (optional) [bootstrap](https://getbootstrap.com) - Used for designing layout of application
    * (optional) [bootstrap-datepicker-rails](https://github.com/Nerian/bootstrap-datepicker-rails) - Used to format date when creating/editing birthday
    * (optional) [bootstrap-glyphicons](https://github.com/anjlab/bootstrap-glyphicons) - Used for design of tutee page
    * (optional) [autoprefixer-rails](https://github.com/ai/autoprefixer-rails) - Tool to parse CSS and add vendor prefixes to CSS rules using values from the Can I Use database
    * (optional) [jquery-rails](https://github.com/rails/jquery-rails) - This gem provides jQuery 1, 2 and 3, the jQuery UJS adapter, assert_select_jquery to test jQuery responses in Ruby tests
    
