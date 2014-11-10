class RecipesController < ApplicationController
  def new
    @recipe = Recipe.new
  end

  def create
    @recipe_form = RecipeForm.new(params[:recipe_form])
    if @recipe_form.save
      redirect_to recipe_path(@recipe_form.recipe.id)
    else
      render :new
    end
  end

  def update
    @recipe = Recipe.find(params[:id])
    if @recipe.update(params.require(:recipe_form).permit(:name, :servings, :instructions))

      unless params[:recipe_form][:ingredients] == nil
        params[:recipe_form][:ingredients].each do |ing|
        @recipe.amounts.find_or_create_by(ingredient_id: ing)
        end
      end

      unless params[:recipe_form][:ingredient][:name] == ""
        @recipe.ingredients.create(name: params[:recipe_form][:ingredient][:name])
      end

      redirect_to recipe_path(@recipe.id)

    else
      render :new
    end
  end

  def edit
    # raise params.inspect
    @recipe = Recipe.find(params[:id])
  end

  def destroy
    Recipe.destroy(params[:id])
    redirect_to root_path
  end

  def index
  end

  def show
    @recipe = Recipe.find(params[:id])
    @ingredients = @recipe.ingredients
  end
end
