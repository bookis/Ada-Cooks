require 'spec_helper'

describe "WelcomeController" do

  describe "GET#index" do
    it "returns the home page through the index method" do
      get :index
      response.should render_template :index
    end
  end

end
