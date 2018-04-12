Rails.application.routes.draw do
  get 'coming_soon/index'

  resources :homes
  get 'home/index'

  #root 'home#index'
  root 'coming_soon#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
