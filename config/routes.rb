Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  resources :partners, only: [:new, :create, :edit, :update, :destroy] do
    get '/partners/:id/keywords', to: 'keywords#index'
    resources :preferences, only: [:new, :create, :update]
  end
  # Defines the root path route ("/")
  # root "articles#index"
  resources :events, except: :index
  get '/dashboard', to: 'events#uncompleted_events', as: :dashboard
  get '/events/:id/success', to: 'events#edit_success', as: :success
  get '/events/:id', to: 'events#update_success'
  get '/completed_events', to: 'events#completed_events', as: :history
end
