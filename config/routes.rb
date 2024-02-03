Rails.application.routes.draw do
  root "articles#index"

  resources :articles do
    resources :comments
  end

  resources :artists, only: [:index, :show] do
    resources :albums, only: [:index, :show] do
      resources :songs, only: [:show]
    end
  end
resources :artists, only: [:show] do
    member do
      post 'create_photo'
      post 'create_comment'
    end
  end
end
