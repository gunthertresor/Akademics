Rails.application.routes.draw do
  devise_for :users, :controllers => { registrations: 'users/registrations' }

  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  resources :courses, only: [:index, :show] do
    resources :reviews, only: [:new, :create, :destroy, :edit]
    # resources :classes, only: [:new, :create]
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
    member do
      patch :validate
      patch :reject
    end
  end

  namespace :teacher do
    resources :courses, only: [:show, :new, :create, :index, :update, :edit, :destroy] do
        resources :classes, only: [:new, :create]
    end
    resources :classes, only: [:show, :index, :update, :edit, :destroy]

    resources :enrollments, only: [:index, :update, :edit, :destroy]
    resources :reviews, only: [:index, :show] do
      collection do
        get :top
      end
    end
  end

    # namespace :users do
    # end

  get :teachers, to: 'users#index'
  get 'teachers/:id', to: 'users#show', as: :teacher

  get :my_profil, to: 'users#my_profil'
  get :dashboard, to: 'users#dashboard'
end
