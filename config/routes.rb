Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  resources :partners, only: [:new, :create, :edit, :update, :destroy] do
    get '/keywords', to: 'keywords#index'
  end
  # Defines the root path route ("/")
  # root "articles#index"
  get 'events/loading', to: 'events#loading'
  resources :events, except: :index
  get '/dashboard', to: 'events#uncompleted_events', as: :dashboard
  get '/events/:id/success', to: 'events#edit_success', as: :success
  get '/events/:id', to: 'events#update_success'
  get '/completed_events', to: 'events#completed_events', as: :history
  get '/us/', to: 'users#us', as: :us
  resources :inspos, only: %i[index edit update] do
    member do
      post 'toggle_favorite', to: "inspos#toggle_favorite"
    end
  end
  get '/preferences/create', to: 'preferences#create'
  get '/preferences/destroy', to: 'preferences#destroy'
end
