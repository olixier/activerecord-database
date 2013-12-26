## Obectives

Now, it's time to add users the your Cookbook database.
A user has the following attributes:
	* name (String)
	* email (String)
	
A user can have multiple recipes. To model this relationship (association), the Recipes table must have another field : **user_id** which is the user id of the user.

## To do:

1. Create a migration task to create the Users table
2. Create a migration to add the foreign key in the Recipes table (user_id)
3. Run the migrations
4. Define the User model in models/user.rb
5. Feed the database with recipes and users. To create users, you can use the gem Faker [https://github.com/stympy/faker](https://github.com/stympy/faker)
6. Writes queries in main.rb to answer the following questions:
	* How many users are there in the Cookbook DB ?
	* What is the average number of recipes per user ?
	* Gets the user with the most recipes, with all his recipes.
	

## Resources

Faker: [https://github.com/stympy/faker](https://github.com/stympy/faker)
