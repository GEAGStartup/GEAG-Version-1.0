Rails.application.routes.draw do
  resources :meters
  resources :types
  resources :application
  resources :consumptions
  resources :alerts
  resources :limites
  root to: "logged#show"
  get 'logged' , to: "logged#show"
  get 'electricity' , to: "logged#electricity"
  get 'water' , to: "logged#water"
  get 'gas' , to: "logged#gas"
  get 'settings', to:"logged#settings"
  post 'settings', action:"logged#create", to: "logged#show"
  delete 'logged', to: "layouts#application"
end
