# README

Note: a lot of this app was setup using instructions from this tutorial:
https://medium.freecodecamp.org/lets-create-an-intermediate-level-ruby-on-rails-application-d7c6e997c63f

* Ruby version
ruby 2.5.0p0 (2017-12-25 revision 61468)
Rails 5.2.0

* System dependencies
psql (PostgreSQL) 10.3
PhantomJS

* Configuration
In config/application.rb we set: config.action_controller.include_all_helpers = false
b/c we want to control the order that SASS files are loaded so we have
access to the proper variables. This means you need to explicitly
include new asset directories when you add them.

* Database creation
> psql
> create role <insert DB user> with createdb login password
> '<insert_password>';

* Database initialization
bundle exec rails db:create
bundle exec rails db:migrate

* How to run the test suite
rspec spec

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...
