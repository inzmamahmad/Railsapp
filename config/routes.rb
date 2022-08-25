Rails.application.routes.draw do
  resources :reviews
resources :pages
  resources :checkuots
 
  resources :orders
  resources :shipments
  #get 'shipments/index'
  #get 'shipments/show'
  get 'carts/index'
    resources :carts
    put 'carts/update_cart'
    post 'carts/update_cart'
    delete 'carts/delete_cart'
    post 'carts/delete_cart'
  resources :categoryys
  get 'search/index'
  resources :comments
  get 'pages/info'

    resources :ideas do
    resources :reviews, except: [:show, :index]
  end
  devise_for :users

      root to: redirect('/ideas')


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
