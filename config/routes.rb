Rails.application.routes.draw do
  get 'about/index'
  get 'inspirations/index'
  get 'inspirations/show'
  get 'artworks/index'
  get 'artworks/show'
  get 'about/index' ## about page
  get 'gallery/index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  resources :artworks, only: [:index, :show]
  resources :inspirations, only: [:index, :show]

end
