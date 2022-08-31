Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'items#index'
  resources :orders, only: [:create]
  resources :items, only: %i[index show], :path => 'image' do
    resources :pictures, only: [:create]
  end
  resources :carts, only: %i[show create update destroy], :path => 'mon_panier'
  resources :purchases, only: %i[create destroy], :path => 'achat'
  scope '/checkout' do
    post 'create', to: 'checkout#create', as: 'checkout_create'
    get 'success', to: 'checkout#success', as: 'checkout_success'
    get 'cancel', to: 'checkout#cancel', as: 'checkout_cancel'
  end
end
