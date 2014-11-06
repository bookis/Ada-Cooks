class Ingredient < ActiveRecord::Base
  has_many :recipes, through: :recipes_ingredients

  def pretty_print(name)
    name.capitalize
  end
end
