Rails.application.routes.draw do
  get 'user/profile'
  devise_for :users, path: '/'
  root to: 'login#index'
  get 'home/index'
  get '/profile', to: 'user#profile'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
