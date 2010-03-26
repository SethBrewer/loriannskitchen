class CreateRecipeCategories < ActiveRecord::Migration
  def self.up
    create_table :recipe_categories do |t|
      t.string :name
      t.string :description

      t.timestamps
    end
  end

  def self.down
    drop_table :recipe_categories
  end
end
