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

    # Create recipe ingredients for each id in ingredients key
    unless @attributes[:ingredients] == nil
      @attributes[:ingredients].each do |id|
        Amount.create(ingredient_id: id, recipe_id: @recipe.id)
      end
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
