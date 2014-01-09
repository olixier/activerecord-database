## Obectives

### Understand database migrations

You will learn how to create migrations for you database.
For that, you will use Rake.

Migrations are tasks that create or/and update your database schema.
As you know a Relational Database has a schema (the archictecture of your database) and it is very important to keep to keep control of this schema.

### Rake

Rake [http://rake.rubyforge.org/](http://rake.rubyforge.org/) is a ruby program that helps you create tasks.

##### Examples of rake tasks

* Rake db:create : Task that creates the database
* Rake db:delete : Task that deletes the database
* Rake db:migrate : Task that runs the database migration

### Examples of migration tasks

Let's you want to add a new column in your table, but you do not want to remove the table and create a new one (because you don't want to delete your data), so your will create a migration task!


## Exercice

The objective of this exercise is two migrations tasks:

 1. **CreateRecipes**  => task that creates the Recipes table
 2. **AddRatingToRecipe** => task adds a new column **Rating** to the Recipes table

 
Note: the migrations tasks are in db/migrate folder.
 
Then run this migration task with Rake.


## Resources

[http://rake.rubyforge.org/doc/rakefile_rdoc.html](http://rake.rubyforge.org/doc/rakefile_rdoc.html)