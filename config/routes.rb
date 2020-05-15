Rails.application.routes.draw do
  get '/', to: 'home#home', as: "home"
  resources :tasks

  root 'home#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
