Rails.application.routes.draw do
  devise_for :users
  resources :recipes do
    resources :recipe_foods
  end

  resources :foods, only: [:index, :new, :create, :destroy]
 
end
