Rails.application.routes.draw do
  # devise_for :users
  root to: 'scenes#index'

  # get '/scenes', to: 'scenes#index'

  # get "scenes/:id", to: "scenes#show"

  # patch "scenes/new", to: "scenes#new"

  # post 'scenes/new', to: 'scenes#create'

  # get 'scenes/:id/edit', to: 'scenes#edit'

  # patch 'scenes/:id', to: 'scenes#update'

  # delete 'scenes/:id', to: 'scenes#destroy'

resources :scenes
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  # resources :users do
  #    collection do
  #      get "dashboard"
  #    end
  #  end
  #  resources :scenes, only: [ :new, :create, :index, :show ] do
  #    resources :bookings, only: [ :new, :create, :show ] do
  #      resources :reviews, only: [:new, :create]
  #    end
  #  end

end
