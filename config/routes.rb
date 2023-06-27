Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  resources :courses, only: [:index, :show] do
    resources :enrollments, only: [:new, :create]
    resources :reviews, only: [:new, :create]
  end
  resources :enrollments, only: [:index, :update, :destroy] do
    member do
      patch :validate
      patch :reject
    end
  end
  namespace :teacher do
    resources :courses, only: [:index, :update, :edit, :destroy]
    resources :enrollments, only: [:index, :update, :edit, :destroy]
    resources :reviews, only: [:show]
  end
  resources :contact, only: :index
end
