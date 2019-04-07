Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      get :resources, to: 'resources#index'
      resources :va_locations, only: [:index]
      resources :favorites
    end
  end
end
