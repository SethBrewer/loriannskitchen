class CreateMeals < ActiveRecord::Migration
  def self.up
    create_table :meals do |t|
      t.datetime :date_and_time
      t.decimal :price_for_small
      t.decimal :price_for_large
      t.decimal :price_for_special

      t.timestamps
    end
  end

  def self.down
    drop_table :meals
  end
end
