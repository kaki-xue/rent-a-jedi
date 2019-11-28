Rails.application.routes.draw do

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
 root to: 'aliens#home'
 post '/login', to: 'login#login'
 namespace :api, defaults: { format: :json } do
    namespace :v1 do
      resources :aliens, only: [:index, :show, :update, :create, :destroy]
    end
  end

  namespace :api, defaults: { format: :json } do
    namespace :v1 do
      resources :users, only: [:index, :show, :create, :destroy] do
        resources :bookings, only: [:index, :show]
        resources :aliens, only: [:index, :show, :destroy, :create]
      end
    end
  end

  namespace :api, defaults: { format: :json } do
    namespace :v1 do
      resources :bookings, only: [:index, :show, :update, :create, :destroy]
    end
  end
end
