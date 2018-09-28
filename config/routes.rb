Rails.application.routes.draw do

  resources :question_categories
  resources :categories

  resources :questions do
    get 'search', on: :collection
    resources :answers
  end

  get 'questions/:id/set_star_answer',
    to: "questions#set_star_answer",
    as: "set_star_answer"


  get 'questions/:id/negative_rating',
    to: "questions#negative_rating",
    as: "negative_rating"


  get 'questions/:id/positiv_rating',
    to: "questions#positiv_rating",
    as: "positiv_rating"

  get 'questions/:id/like_question',
    to: "questions#like_question",
    as: "like_question"


  get 'questions/:id/switch_answered',
    to: "questions#switch_answered",
    as: "switch_answered"

  get 'home/index'
  resources :userprofiles
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'home#index'
end
