# frozen_string_literal: true

Rails.application.routes.draw do
  root to: 'posts#index'

  resources :users, only: %i[new create]
  resources :posts, only: %i[new create index]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
