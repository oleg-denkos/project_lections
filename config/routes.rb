Rails.application.routes.draw do
  root to: 'pages#home'
  mount ActionCable.server => '/cable'
  resources :posts do
    post 'comments', to: 'comments#create'
  end

  devise_for :users
  match 'users/:id' => 'users#show', via: :get
  resources :users, only: [:show]

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
