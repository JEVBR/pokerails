Rails.application.routes.draw do
  get 'hello_world', to: 'hello_world#index'
  root to: 'pages#home'

  #API
  namespace :api, defaults: { format: :json } do
    namespace :v1 do
      resources :pokemons, only: [ :index ]
    end
  end

#   # Sidekiq Web UI
#   require "sidekiq/web"
# # only for admins:  authenticate :user, lambda { |u| u.admin } do
#     mount Sidekiq::Web => '/sidekiq'
#   #end
end
