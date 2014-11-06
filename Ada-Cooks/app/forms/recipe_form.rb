class RecipeForm

  def initialize(attributes)
    @attributes = attributes
  end

  def save
    # Create an instance of the recipe class.
    @recipe = Recipe.new(
                      name: @attributes[:name],
                      instructions: @attributes[:instructions]
                      )
    @recipe.save
    # create recipe ingredients for each id in ingredients key
    @attributes[:ingredients].each do |id|
      RecipesIngredients.new(ingredient_id: id, recipe_id: @recipe.id)
    end
    # Create a new ingredient
    @ingredient = Ingredient.new(name: @attributes[:ingredient][:name])
    @ingredient.save

    # Associate that new ingredient with the new recipe
  end

  def recipe
    @recipe
  end

end
