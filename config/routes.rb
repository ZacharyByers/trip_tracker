Rails.application.routes.draw do
  root 'trips#index'
  devise_for :users
  resources :trips do
    resources :locations, except: [:index]
  end
end
