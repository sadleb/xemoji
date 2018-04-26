Rails.application.routes.draw do

  get 'coming_soon/index'
  #root 'coming_soon#index'
  root 'pages#index'

  resources :users

  # Registration, login routes.
  devise_for :users, :controllers => {:registrations => "registrations"}
  devise_scope :user do
    get 'login', to: 'devise/sessions#new'
    get 'signup', to: 'devise/registrations#new'
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
