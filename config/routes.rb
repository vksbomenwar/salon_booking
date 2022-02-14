Rails.application.routes.draw do
  resources :salons
  root to: 'salons#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
