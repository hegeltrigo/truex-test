Rails.application.routes.draw do
  resources :orders
  mount Rswag::Ui::Engine => '/api-docs'
  mount Rswag::Api::Engine => '/api-docs'
  namespace :api do
    namespace :v1 do
      resources :dishes
      resources :dish_types
      resources :options
      resources :option_types
      resources :dish_sizes
    end  
  end  
end
