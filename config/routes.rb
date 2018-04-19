Rails.application.routes.draw do

  get 'coming_soon/index'
  root 'coming_soon#index'

  resources :users

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
