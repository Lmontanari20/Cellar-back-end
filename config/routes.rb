Rails.application.routes.draw do
  resources :wines
  resources :bottles
  resources :sections
  resources :cellars
  resources :users, only: [:create, :show]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  get 'users/:username', to: 'users_controller#show'
end
