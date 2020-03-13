Rails.application.routes.draw do
  get 'users/new'
  root 'static_pages#home'
  get '/help', to: 'static_pages#help'
  get '/about', to: 'static_pages#about'
  get '/contact', to: 'static_pages#contact'
  get '/signup', to: 'users#new'
  resources :users # automatically ensures that the Rails application responds to the RESTful URLs, bv. ensures that a POST request to /users is handled by the create action
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
