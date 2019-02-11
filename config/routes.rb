# frozen_string_literal: true

Rails.application.routes.draw do
  resources :goals
  get 'user/index'
  get 'user/show'
  get 'user/edit'
  resources :weighings
  devise_for :users
  get 'static/index'
  root 'static#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
