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
    @recipe_form = Recipe.find(params[:id])
    #raise params.inspect
    if @recipe_form.update
      redirect_to recipe_path(@recipe_form.id)
    else
      render :new
    end
  end

  def edit
    @recipe = Recipe.find(params[:id])
  end

  def destroy
  end

  def index
  end

  def show
    @recipe = Recipe.find(params[:id])
    @ingredients = @recipe.ingredients
  end
end
