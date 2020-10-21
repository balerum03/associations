Rails.application.routes.draw do
  resources :events
  resources :users
  resources :logins, only: [:new, :create, :destroy]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'users#index', :path_prefix => '/:username'
end
