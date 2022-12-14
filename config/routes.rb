Rails.application.routes.draw do

  devise_for :users, path: :users, path_names: { sign_in: :login, sign_out: :logout, sign_up: :signup }

  root to: 'posts#show'

  resources :posts
end
