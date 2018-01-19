Rails.application.routes.draw do
  resources :galleries
  resources :posts



  root :to => 'galleries#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
