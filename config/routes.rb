Rails.application.routes.draw do
  devise_for :users
  resources :recipes

  resources :foods, only: [:index, :new, :create, :destroy]
 
end
