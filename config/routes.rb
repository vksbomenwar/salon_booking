Rails.application.routes.draw do
  resources :bookings
  resources :services
  resources :salons
  root to: 'salons#index'

  namespace :api do
    namespace :v1 do
    	resources :salons do
	    	collection do
	        post 'get_time_slot_for_service'
	      end
	    end
    end
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
