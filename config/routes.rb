Rails.application.routes.draw do
  root to: 'home#index'
  post 'driver' => 'drivers#index'

  namespace :api do
    namespace :v1, defaults: {format: :json } do
      resources :searches, only: [:show, :index]
    end
  end
end
