Rails.application.routes.draw do

  devise_for :members

  resources :members do
  	 resources :profiles
  	 resources :localtions
  end
  
  root 'home#index'
end
