Rails.application.routes.draw do
  root to: "logged#first"
  get 'logged' , to: "logged#show"
  get 'electricity' , to: "logged#electricity"
  get 'water' , to: "logged#water"
  get 'gas' , to: "logged#gas"
  get 'settings', to:"logged#settings"
end
