Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  devise_for :users
  root to: "homes#top"
  get 'home/about' => 'homes#about'
  resources :books, only: [:create,:index, :show, :edit, :update, :destroy]
  resources :users, only: [:index, :show, :edit, :update]
end
