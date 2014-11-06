class Ingredient < ActiveRecord::Base
  has_many :amounts
  has_many :recipes, through: :amounts

  def pretty_print(name)
    name.capitalize
  end
end
