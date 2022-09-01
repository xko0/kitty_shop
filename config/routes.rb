Rails.application.routes.draw do
  namespace :admins do
    resources :users
    resources :orders, only: %i[edit update]
    resources :items
  end

  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'items#index'

  resources :admins, only: [:index]
  resources :orders, only: [:create]
  resources :items, only: %i[index show], :path => 'image' do
    resources :pictures, only: [:create]
  end
  resources :carts, only: %i[show create update destroy], :path => 'mon-panier'
  resources :purchases, only: %i[create destroy], :path => 'achat'
  resources :users, only: %i[show edit update destroy], :path => 'mon_compte'
  scope '/checkout' do
    post 'create', to: 'checkout#create', as: 'checkout_create'
    get 'success', to: 'checkout#success', as: 'checkout_success'
    get 'cancel', to: 'checkout#cancel', as: 'checkout_cancel'
  end
end
