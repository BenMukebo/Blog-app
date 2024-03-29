![](https://img.shields.io/badge/Microverse-blueviolet)

# Block-app


## Description

> The Blog app will be a classic example of a blog website. I create a fully functional website that will show the list of posts and empower readers to interact with them by adding comments and liking posts, add validations to the models, create specs for them, and find and fix N+1 queries problems.
.

## Learning objectives

- Diagram a data model clearly and explain what it's doing.
- Understand how to use medium-fidelity wireframes to create a UI.
- Use controllers to handle requests and render empty views.
- Install Ruby on Rails framework.
- Use Ruby Gems as a software packages system.
- Understand Rails naming conventions.
- Use params from browser requests in a safe way.
- Write tests for controllers.
- Understand what ORM is.
- Use database migration fails to maintain database schema.
- Set up associations between models.
- Write SQL queries with Active Record.
- Use preprocessed HTML file with embedded Ruby code.
- Use layouts and templates for shared content.
- Use preprocessed HTML file with embedded Ruby code.
- Use layouts and templates for shared content.
- Use validations for models.
- Write unit tests for models.
- Secure app from n+1 problems.


## Getting Started

To get a local copy for this project and running follow these simple example steps.

### Prerequisites

- You need to have git installed in your machine.
- Install a recent version of Postgres.
- Already install Rails


## Setup

## Setting Up PostgreSQL

- The postgres installation doesn't setup a user for you, so you'll need to follow these steps to create a user with permission to create databases

```bash
$  sudo -u postgres createuser blog-app -s
```


### Clone this repository

```bash
$ git clone https://github.com/BenMukebo/Blog-app.git
$ cd Blog-app
```

### Create the database

```bash
$   rails db:create   # or
$   rake db:create
```

### Creating the hello-rails Application

- use PostgreSQL database 

```bash
$   rails new blog-app --database=postgresql  #or
$   rails new blog-app -d postgresql

$   cd hello-rails # Move into the application directory
```

### Install linter and 

- Rubocop gem

```bash
$  bundle init
$  bundle install
```
- Stylelint package

```bash
$  npm init -y
$  npm install
$  npm install --save-dev stylelint@13.x stylelint-scss@3.x stylelint-config-standard@21.x stylelint-csstree-validator@1.x

```

- Run linter

```bash
$  rubocop .
$  npx stylelint "**/*.{css,scss}" 
```

- In auto-correct mode, RuboCop will try to automatically fix offenses:

```bash
$  rubocop -A # or
$  rubocop --auto-correct-all
$  npx stylelint "**/*.{css,scss}" --fix 
```


### Starting up the Web Server

```bash
$   rails s # or
$   rails server # or
$   rails server -p3001
```


#### Listing Existing Routes

- You can now visit `http://localhost:3000` to view your new website!

 You can also execute the `rails routes` command in your terminal to produce the same output.



#### Generate rspec

- At the first you need to include those lines in your Gemfile

```bash
  gem 'rails-controller-testing'
  gem 'rspec-rails'
```

#### Install RSpec

```bash
$  rails generate rspec:install
```
- This should generate some files that you will need to run your tests and should give us a Controller and a View

- Then run:

```bash
$  rspec spec     # to test if your tests are passed
```

#### Generate migration files

```bash
  $  rails generate migration CreateUsers
  $  rails generate migration CreatePosts
  $  rails generate migration CreateLikes
  $  rails generate migration CreateComments
  $  rails generate migration AddUserRefToComments
  $  rails generate migration AddPostRefToComments
  $  rails generate migration AddUserRefToLikes
  $  rails generate migration AddPostRefToLikes
  $  rails generate migration AddUserRefToPosts
```

#### Generate model

```bash
  $  rails generate model User name  photo bio:text posts_counter:integer  
  $  rails generate model Post  title  text:text comments_counter:integer likes_counter:integer author:references
  $  rails generate model Like author:references post:references 
  $  rails generate model Comments text:text author:references post:references
```


#### Generate controllers

```bash
  $  rails generate controller users index show
  $  rails generate controller posts index show
```
#### Generate Schema

- To push the Migration into the database

```bash
  $   rails db:migrate
```
- We use the seeds.rb file to records in the database
- To drop, create a table and to migrate and send the seed into the database:

```bash
  $   rails db:drop db:create db:migrate db:seed  
```

- To check available routes

```bash
  $   rails routes  
```

#### Run Capybara

```bash
$  bundle exec rspec ./spec/features/user_show_spec.rb
$  bundle exec rspec ./spec/features/post_show_spec.rb
$  bundle exec rspec ./spec/features/user_post_index_spec.rb  
```

## Built With

This project is build with:

-  ![Ruby](https://img.shields.io/badge/-Ruby-000000?style=flat&logo=ruby&logoColor=red)
-  ![Ruby on Rails](https://img.shields.io/badge/-Ruby_on_Rails-000000?style=flat&logo=ruby-on-rails&logoColor=blue)

## Authors

👤 **Ben Mukebo**

- GitHub: [@BenMukebo](https://github.com/BenMukebo)
- Twitter [@BenMukebo](https://twitter.com/BenMukebo)
- LinkedIn [BenMukebo](https://www.linkedin.com/in/kasongo-mukebo-ben-591720205/)

## 🤝 Contributor


Contributions, issues, and feature requests are welcome!

Feel free to check the [issues page](https://github.com/BenMukebo/Blog-app/issues).

## Show your support

Give a ⭐️ if you like this project!

## Acknowledgments

- Hat tip to anyone whose code was used
- Inspiration
- etc

## 📝 License

This project is [MIT](./MIT.md) licensed.
