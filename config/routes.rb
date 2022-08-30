Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'items#index'
<<<<<<< HEAD
  resources :items, only: %i[index show]
  resources :carts, only: %i[show create update destroy]
  resources :purchases, only: %i[create destroy]
  resources :orders, only: [:create]
=======
  resources :items, only: %i[index show], :path => 'image'
  resources :carts, only: %i[show create update destroy], :path => 'mon_panier'
  resources :purchases, only: %i[create destroy], :path => 'achat'
>>>>>>> c9bc744bef956e3748a36d039e419e3f922c9203
end
