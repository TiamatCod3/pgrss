Rails.application.routes.draw do
  resources :products
  resources :classifications
  resources :programs
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
