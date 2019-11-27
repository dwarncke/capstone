Rails.application.routes.draw do
  root 'quiz#index'
  resources :quiz
  get 'new_quiz', to: 'quiz#new'
  get 'quiz_index', to: 'quiz#index'
  get 'david', to: 'quiz#david'
  get 'alexis', to: 'quiz#alexis'
  get 'stevie', to: 'quiz#stevie'
  get 'patrick', to: 'quiz#patrick'
  get 'ted', to: 'quiz#ted'
  get 'johnny', to: 'quiz#johnny'
  get 'moira', to: 'quiz#moira'
  get 'rowland', to: 'quiz#rowland'
end
