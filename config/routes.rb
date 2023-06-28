Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  resources :courses, only: [:index, :show] do
    resources :classes, only: [:new, :create]
    #list meilleur prof
    collection do
        get :best
    end
    #list meilleur cour
    collection do
        get :featured
    end
  end

  resources :classes, only: [:show, :index] do
    resources :enrollments, only: [:new, :create]
  end

  resources :enrollments, only: [:index, :update, :destroy] do
    resources :reviews, only: [:new, :create]
    member do
      patch :validate
      patch :reject
    end
  end

#   namespace :users do

#   end

  namespace :teacher do
    resources :courses, only: [:new, :create, :index, :update, :edit, :destroy]
    resources :enrollments, only: [:index, :update, :edit, :destroy]
    resources :reviews, only: [:index, :show] do
      collection do
        get :top
      end
    end
  end

  resources :profil
end

# rails generate devise:controllers users
