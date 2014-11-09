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

    # Associate existing recipe ingredients for each id in ingredients key
    unless @attributes[:ingredients] == nil
      @attributes[:ingredients].each do |id|
        Amount.create(ingredient_id: id, recipe_id: @recipe.id)
      end
    end

    # Create a new ingredient
    unless @attributes[:ingredient] == nil
      @ingredient = Ingredient.create(name: @attributes[:ingredient][:name])
      Amount.create(ingredient_id: @ingredient.id, recipe_id: @recipe.id)
    end
    # Associate that new ingredient with the new recipe
  end

  def recipe
    @recipe
  end

end
