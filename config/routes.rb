Rails.application.routes.draw do
  # get 'review/index'
  # get 'review/create'
  # get 'review/new'
  # get 'review/show'
  # get 'restaurant/index'
  # get 'restaurant/create'
  # get 'restaurant/new'
  # get 'restaurant/show'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :restaurants, only: [:create, :index, :new, :show] do
    resources :reviews, only: [:create, :new]
  end
end
