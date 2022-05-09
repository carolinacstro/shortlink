Rails.application.routes.draw do

  root to: 'home#index'

  resources :links 

  # post "/links" => 'links#create'

end
