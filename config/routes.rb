Rails.application.routes.draw do
  resources :wine_histories
  resources :bottles
  resources :sections
  resources :cellars
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  get 'users/:username', to: 'users_controller#show'
end
