Rails.application.routes.draw do
  resources :events
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # root 'welcome#index'# :path_prefix => '/:username'
  root 'events#index'
  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  get 'welcome', to: 'sessions#welcome'
  delete 'logout', to: 'sessions#destroy', as: 'logout'
  # get 'login' => 'logins#new'
end
