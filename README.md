# Food Roulette

Ruby on Rails project to help a User decide where to eat when they can't decide.

## Description

Basic User:
1. User is allowed to Sign Up (as admin or not), Log In and Log Out 
2. Once logged in, user is taken to a form that asks for meal_type and which food_categories to include in the search
3. User taken to show page with a restaurant and meal type and food category
4. There is an option to accept or try 1 more time

Admin:
1. Admin is allowed to add Restautrants
2. Admin is allowed to edit Restaurants
3. Admin is allowed to view Restaurant stats (times accepted, broken down by meal type)

## Models

User: name, email, password, admin*
Restaurant: name, meal_type (breakfast/lunch/dinner), food_category (deli/pizza/etc.)
Meal: user_id, restaurant_id

## Usage

git clone git@github.com:mntjones/food-roulette.git

cd to directory

rails s <- go to url provided


## License

The web app is available as open source under the terms of the MIT License.


## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/mntjones/food-roulette. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the Contributor Covenant code of conduct.