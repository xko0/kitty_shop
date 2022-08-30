Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'items#index'
  resources :items, only: %i[index show] do
    ressources :pictures, only: [:create]
  end
  resources :carts, only: %i[show create update destroy]
  resources :purchases, only: %i[create destroy]
  resources :orders, only: [:create]
  resources :items, only: %i[index show], :path => 'image'
  resources :carts, only: %i[show create update destroy], :path => 'mon_panier'
  resources :purchases, only: %i[create destroy], :path => 'achat'
end
