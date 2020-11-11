Rails.application.routes.draw do
  get 'tradeables/new'
  devise_for :users, :path_prefix => 'd'
  resources :dashboard
  resources :books do
    resources :comments
    resources :tradeables
  end

  resources :users
  match '/users/:id', to: 'users#show', via: 'get'
  match '/users',   to: 'users#index',   via: 'get'
  root 'welcome#index'
  get 'dashboard/index'
  get 'users/index'
  get 'welcome/index'
  get 'users/profile'
end
