Rails.application.routes.draw do
  
  root "statics#index" 
  resources :question_plays
  resources :level_plays
  resources :answers
  resources :questions
  resources :levels
  resources :tests
  devise_for :users
  resources :users
  
end
