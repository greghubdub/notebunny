Rails.application.routes.draw do
  root 'notes#index'
  resources :notes
  devise_for :users, controllers: {registrations: "users/registrations"}

end
