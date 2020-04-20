# frozen_string_literal: true

Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  devise_for :users
  # root to: 'home#index'

  devise_scope :user do
    get 'signin', to: 'devise/sessions#new'
    get 'signup', to: 'devise/registrations#new'

    authenticated :user do
      root 'home#index', as: :authenticated_root
    end

    unauthenticated do
      root 'devise/sessions#new', as: :unauthenticated_root
    end

    # For more details: https://stackoverflow.com/questions/4954876/setting-devise-login-to-be-root-page
  end
end
