Rails.application.routes.draw do
  resources :events
  resources :users, only: [:new, :create]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # root 'welcome#index'# :path_prefix => '/:username'
  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  get 'welcome', to: 'sessions#welcome'
  # delete 'logo, ut' => 'logins#destroy'
  # get 'login' => 'logins#new'
end
