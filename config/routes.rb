Rails.application.routes.draw do
  mount RailsAdmin::Engine => "/admin", as: "rails_admin"
  root 'suggestions#suggestions'

  get 'kelioniu-paieska', to: 'main#finder'
  get 'kontaktai', to: 'main#contacts'
  get 'apie', to: 'main#about'

  resources :trips
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
