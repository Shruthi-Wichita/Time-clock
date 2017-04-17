Rails.application.routes.draw do
  root to: "devise/sessions#new"
  resources :time_sheets
  resources :projects
  devise_for :views
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end