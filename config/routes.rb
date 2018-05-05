Rails.application.routes.draw do

  root 'pages#index'

  # Registration, login routes.
  devise_for :users, :controllers => {:registrations => "registrations"}
  devise_scope :user do
    get 'login', to: 'devise/sessions#new'
    get 'signup', to: 'devise/registrations#new'
  end

  # Make sure the users routes go after the devise routes so that devise routes take precendence.
  # E.g. if you do users/sign_out but the order is switched, it thinks sign_out is the id
  resources :users do
    resources :xemojis
  end

  # Expose the above users and xemojis through a /api/v1 path
  namespace :api do
    namespace :v1 do
      resources :users do
        resources :xemojis
      end
    end
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
