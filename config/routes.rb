Rails.application.routes.draw do
  resources :tests
  get 'product/Laptop'
  get 'product/Phone'
  get 'product/Tablet'
  get 'product/Sound'
  get 'product/Accessories'
  get 'product/:id/Detail', to: 'product#Detail', as: 'product'
  # get 'users/index'
  # get 'users/show'
  # get 'users/edit'
  # get 'users/update'
  devise_for :users
  resources :users, only: [:index, :show, :edit, :update]

  #get 'home/index'
  root "home#index"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
