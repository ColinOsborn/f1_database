Rails.application.routes.draw do
  root to: 'home#index'
  post 'driver' => 'drivers#index'
end
