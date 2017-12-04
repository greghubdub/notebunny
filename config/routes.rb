Rails.application.routes.draw do
  resources :notes
  devise_for :users, controllers: {registrations: "users/registrations"}

end
