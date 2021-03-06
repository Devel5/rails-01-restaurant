Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get "/restaurants", to: "restaurants#index", as: "restaurants"
  post "/restaurants", to: "restaurants#create"
  get "/restaurants/new", to: "restaurants#new", as: "new_restaurant"
  get "/restaurants/list", to: "restaurants#list", as: "restaurant_list"
  get "/restaurants/:id", to: "restaurants#show", as: "restaurant"

  root 'restaurants#index'
  
  put "/restaurants/:id", to: "restaurants#update"
  patch "/restaurants/:id", to: "restaurants#update"
  get "/restaurants/:id/edit", to: "restaurants#edit", as: "edit_restaurant"
  post "/reviews", to: "reviews#create", as: "review"
end
