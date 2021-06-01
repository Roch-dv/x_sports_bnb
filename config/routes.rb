Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  resources :activities do 
    resources :reviews, only: [:new, :create]
  end 
  resources :users, only: [:create, :new, :destroy, :edit]
  resources :categories, only: [:index, :show]
end
