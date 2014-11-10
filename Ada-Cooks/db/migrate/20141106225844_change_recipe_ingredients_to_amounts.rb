class ChangeRecipeIngredientsToAmounts < ActiveRecord::Migration
  def change
    rename_table :recipes_ingredients, :amounts
  end
end
