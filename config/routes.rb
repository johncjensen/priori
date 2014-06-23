Rails.application.routes.draw do
  root 'organizations#index'
  get 'organization/:name', to: "organizations#show"
  resources :products
end
