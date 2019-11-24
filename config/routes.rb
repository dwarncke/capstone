Rails.application.routes.draw do
  root 'quiz#index'
  resources :quiz
  get 'new_quiz', to: 'quiz#new'
  get 'quiz_index', to: 'quiz#index'
end
