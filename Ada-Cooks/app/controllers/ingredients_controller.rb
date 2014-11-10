class IngredientsController < ApplicationController
  def new
    @ingredient = Ingredient.new
  end

  def create
    @ingredient = Ingredient.new(ingredients_params)
    #pretty_print(@ingredient.name)
    if @ingredient.save
      redirect_to root_path
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
  end

  private

  def ingredients_params
    params.require(:ingredient).permit(:name)
  end
end
