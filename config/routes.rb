Rails.application.routes.draw do
  resources :events
  resources :users
  post '/attendances/:id', to: 'events#attending', as: 'attendee'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # root 'welcome#index'# :path_prefix => '/:username'
  root 'users#index'
  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy', as: 'logout'
  # get 'login' => 'logins#new'
end
