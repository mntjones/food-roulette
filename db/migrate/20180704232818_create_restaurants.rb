class CreateRestaurants < ActiveRecord::Migration[5.2]
  def change
    create_table :restaurants do |t|
    	t.string :name
    	t.string :meal_type
    	t.string :food_type
    end
  end
end
