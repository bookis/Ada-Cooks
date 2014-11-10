class Recipe < ActiveRecord::Base
  belongs_to :user
  has_many :amounts
  has_many :ingredients, through: :amounts
end
