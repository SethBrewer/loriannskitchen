class CreateMealsRecipes < ActiveRecord::Migration
  def self.up
    create_table :meals_recipes do |t|
      t.integer :meal_id
      t.integer :recipe_id

      t.timestamps
    end
  end

  def self.down
    drop_table :meals_recipes
  end
end
