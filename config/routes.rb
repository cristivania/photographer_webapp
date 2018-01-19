Rails.application.routes.draw do
  resources :posts
  resources :galleries


  root :to => 'galleries#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
