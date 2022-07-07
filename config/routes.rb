Rails.application.routes.draw do
  root "pins#index"
  resources :pins
  devise_for :users
end
