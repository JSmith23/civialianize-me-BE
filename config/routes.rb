Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      get '/resources', to: 'resources#index'
      get '/resources/:id', to: 'resources#show'
      post '/resources', to: 'resources#create'
    end
  end
end
