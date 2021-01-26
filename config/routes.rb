# frozen_string_literal: true

Rails.application.routes.draw do

  devise_for :users
	resources :posts, only: %i[new create index] do
		collection do
			get :search
		root to: 'posts#index'
		end
	end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
