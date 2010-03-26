class Recipe < ActiveRecord::Base
  validates_presence_of :name => "Please supply a name"
  validates_presence_of :description => "Please supply a description"
  validates_presence_of :recipe_category_id => "Please choose a category"
  belongs_to :recipe_category
  has_many :meal_details, :through => :meals
end

class  RecipeCourses < ActiveRecord::Base
        def self.ListOfRecipeCourses
                ["Appetizer",
				"Main Course",
                "Side Dish",
                "Dessert"]
        end
end

class DatesForCalendar < ActiveRecord::Base
		def self.TheYear
				Time.now.strftime("%Y")
		end
end