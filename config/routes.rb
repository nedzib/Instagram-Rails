Rails.application.routes.draw do
  get 'profile/index'
  resources :posts
  get 'home/index'
  devise_for :people, controllers: {
    sessions: 'person/sessions',
    registrations: 'person/registrations'

  }
  resources :comments
  get 'login/login'
  resources :users
  root :to => 'home#index'
  post ':controller(/:action(/:id(.:format)))'
  get ':controller(/:action(/:id(.:format)))'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
