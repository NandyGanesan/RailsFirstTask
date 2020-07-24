Rails.application.routes.draw do

  root 'tags#index' , as: 'home'

  resources :tags do
    resources :products
  end

  resources :products do
    resources :reviews
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
