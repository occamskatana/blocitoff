Rails.application.routes.draw do
 

  devise_for :users, controllers: {
    sesssions: 'users/sessions',
    registrations: 'registrations'
  }

  resources :users, only: [:show] do 
    resources :items, only: [:create]
  end
  
  root to: 'users#show'

  get 'welcome/about'
  get 'welcome/index'
end
