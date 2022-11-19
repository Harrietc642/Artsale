Rails.application.routes.draw do
  get 'customers/index'
  get 'customers/show'
  get 'genres/index'
  get 'genres/show'
  get 'genres/index'
  get 'search/index'
  get 'about/index'
  get 'inspirations/index'
  get 'inspirations/show'
  get 'artworks/index'
  get 'artworks/show'
  get 'about/index' ## about page
  get 'gallery/index'
  get 'gallery/show'
  get 'search/index'
  get 'genres/index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  resources :artworks, only: [:index, :show]
  resources :inspirations, only: [:index, :show]
  resources :gallery, only: [:index, :show]
  resources :genres, only: [:index]
  root to: 'gallery#index'
end
