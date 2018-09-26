Rails.application.routes.draw do

  resources :images
  resources :question_categories
  resources :categories
  resources :answers
  resources :questions
  get 'home/index'
  resources :userprofiles
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'home#index'
end
