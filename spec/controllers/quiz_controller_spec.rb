require 'rails_helper'

RSpec.describe QuizController, type: :controller do
  describe "quiz#index" do
    it "should load the index page" do
    
      get :index
      expect(response).to have_http_status :success
      
    end
  end
end

RSpec.describe QuizController, type: :controller do
  describe "quiz#show" do
    it "should load the spotify widget" do

      get :index
      expect(response).to have_http_status :success
    end
  end
end

RSpec.describe QuizController, type: :controller do
  describe "quiz#show" do
    it "should load the gif image" do

      get :index
      expect(response).to have_http_status :success
    end
  end
end

RSpec.describe QuizController, type: :controller do
  describe "quiz#new" do
    it "should load the form on the page" do

      get :index
      expect(response).to have_http_status :success
    end
  end
end


  
