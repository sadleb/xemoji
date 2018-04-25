Rails.application.routes.draw do

  devise_for :users
  get 'coming_soon/index'
  #root 'coming_soon#index'
  root 'pages#index'

  resources :users

  devise_scope :user do
    get 'login', to: 'devise/sessions#new'
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
