Rails.application.routes.draw do
  get "/home/about" => "homes#about"
  devise_for :users
  resources :users, only: [:edit, :show, :index]
  patch 'users/:id' => 'users#update', as: 'update_user'

  resources :books, only: [:create, :index, :show, :edit, :destroy]
  patch 'books/:id' => 'books#update', as: 'update_book'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: "homes#top"
end
