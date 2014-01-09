## Obectives

### Feed the database

A database full of data is much more fun, right?
So in this exercice, you will feed the cookbook database with data collected from [http://www.marmiton.org/](http://www.marmiton.org/)

## Exercice

We added a new Rake task in Rake file => **rake db:seed**

This rake task will execute the code in db/seed.rb

### To do:

* Writes a program that collects recipes from [http://www.marmiton.org/](http://www.marmiton.org/) and store them in the database. The recipes must use the following ingredients: boeuf veau couteaux tomates fraise bar merlu thon epinard
* Execute this code with rake db:seed
* Writes queries to answer these questions:
	* Gets the 10 most difficult recipes
	* Find the recipes with length less than 30 minutes

### Going further (required)

* Feed the database from CSV => Writes another program **csv_seed.rb**
that reads the content of db/recipes.csv and store them in the database


## Resources

CSV: [http://ruby-doc.org/stdlib-1.9.3/libdoc/csv/rdoc/CSV.html](http://ruby-doc.org/stdlib-1.9.3/libdoc/csv/rdoc/CSV.html)
