Rails.application.routes.draw do
  devise_for :users
  resources :recipes do 
  member do
    patch :complete
  end
end

  root "recipes#index"
end
