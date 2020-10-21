Rails.application.routes.draw do
  resources :events
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'users#index', :path_prefix => '/:username'
  resources :logins
  delete 'logout' => 'logins#destroy'
  get 'login' => 'logins#new'
end
