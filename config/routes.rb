Rails.application.routes.draw do
  root "static_pages#home", page: "home"
  get "/static_pages/:page", to: "static_pages#show"
  get "/help", to: "static_pages#help"
  get "/about", to: "static_pages#about"
  get "categories/shirt"
  get "categories/pant"
  get "categories/dress"
  get "categories/vest"
  get "/signup", to: "user#new"
  resources :products
  resources :users

end
