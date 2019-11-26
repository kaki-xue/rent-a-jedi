Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
 post '/login', to: 'login#login'
 namespace :api, defaults: { format: :json } do
    namespace :v1 do
      resources :aliens, only: [:index, :show, :update, :create, :destroy]
    end
  end

  namespace :api, defaults: { format: :json } do
    namespace :v1 do
      resources :users, only: [:index, :show, :create, :destroy]
    end
  end

  namespace :api, defaults: { format: :json } do
    namespace :v1 do
      resources :bookings, only: [:index, :show, :update, :create, :destroy]
    end
  end

end
