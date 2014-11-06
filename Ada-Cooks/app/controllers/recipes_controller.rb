class RecipesController < ApplicationController
  def new
    @recipe = Recipe.new
  end

  def create
    @recipe_form = RecipeForm.new(params[:recipe_form])
    if @recipe_form.save
      redirect_to root_path#recipe_path(@recipe_form.recipe.id)
    else
      render :new
    end
  end

  def update
  end

  def edit
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
