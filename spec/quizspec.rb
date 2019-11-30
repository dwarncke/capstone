require 'rails_helper'

RSpec.describe QuizController, type: :controller do
  describe "quiz#index" do
    it "should load the index page" do
    
      get :index
      expect(response).to have_http_status :success
      
    end
  end
end

  
