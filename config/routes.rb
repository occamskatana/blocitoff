Rails.application.routes.draw do
 

  devise_for :users, controllers: {
    sesssions: 'users/sessions'
  }

  resources :users, only: [:show] do 
    resources :items, only: [:create]
  end
  
  root to: 'users#show'

  get 'welcome/about'
end
