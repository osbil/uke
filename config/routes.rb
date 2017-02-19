Rails.application.routes.draw do
  devise_for :users
	root 'products#index'

	namespace :admin do
		resources :products do
			member do
				post :publish
				post :hide
			end
		end
	end

	resources :products
end
