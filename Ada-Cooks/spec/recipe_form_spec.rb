require 'spec_helper'

describe "RecipeForm" do
  
  let(:form) { RecipeForm.new(arguments) }

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

  # Uninitialized Constant RecipeForm? Why?

end
