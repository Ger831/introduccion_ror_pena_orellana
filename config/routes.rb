Rails.application.routes.draw do
  devise_for :users
  resources :pins
  get 'pages/index'
  get 'pages/contact'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'pages#index'
  get 'mypins' => 'pins#mypins'
#get 'pinsof/:user_id' => 'pins#pinsof', :as => 'pinsof'
end