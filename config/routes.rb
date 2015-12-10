Rails.application.routes.draw do
  get 'welcome/index'

  devise_for :users, controllers: {
    sesssions: 'users/sessions'
  }
  
  root to: 'welcome#index'

  get 'welcome/about'
end
