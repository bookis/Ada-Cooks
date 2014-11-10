require 'spec_helper'
require_relative "../app/forms/recipe_form"

# for reference params are "recipe_form"=>{"name"=>"soup", "servings"=>"6", "instructions"=>"Soup", "ingredients"=>["3", "4"], "ingredient"=>{"name"=>"pear"}}

describe "RecipeForm" do
  argument = {:recipe_form => {:name => "soup", :servings => 5 ,:ingredients => [1,2,3]}}
  #argument = {:name => "soup", :servings => 5 ,:ingredients => [1,2,3]}

  let(:form) { RecipeForm.new(argument)}

  describe ".new" do
    it "creates an instance of the RecipeForm class" do
      expect(form).to be_a RecipeForm
    end
  end

  describe ".new" do
    it "returns a non-nil value" do
      expect(form).should be_true
    end
  end

end
