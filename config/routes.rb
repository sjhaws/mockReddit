Rails.application.routes.draw do
  root "subs#index"

  resources :subs do
    resources :topics
  end
  
  scope "topics/:topic_id", as: "topic" do
    resources :comments, only: [:new, :create]
  end
  #Custom routes
  # get "/tacos", to: "subs#tacos", as "pizza"
  # post ''
  # update ''
  # destroy ''
end
