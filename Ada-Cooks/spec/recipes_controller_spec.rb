require 'spec_helper'

describe "RecipeController" do

  describe "GET#show" do
    it "returns the specific recipe page" do
      GET :show
      response.should render_template :show
    end
  end

end
