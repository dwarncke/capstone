Rails.application.routes.draw do
  root 'quiz#index'
  resources :quiz
end
