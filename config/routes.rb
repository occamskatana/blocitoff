Rails.application.routes.draw do
  get 'users/show'

  get 'welcome/index'

  devise_for :users, controllers: {
    sesssions: 'users/sessions'
  }

  resources :users, only: [:show]
  
  root to: 'users#show'

  get 'welcome/about'
end
