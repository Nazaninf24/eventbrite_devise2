
Rails.application.routes.draw do
  get 'events/show'
  get 'events/new'
  get 'events/index'
  root 'events#index'
  devise_for :users
  resources :events, except: [:destroy, :edit, :update]
  resources :users, only: [:show]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
