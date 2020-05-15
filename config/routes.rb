Rails.application.routes.draw do
  get '/', to: 'home#home', as: 'home'
  post '/complete_task/:id', to: 'tasks#complete_task', as: 'complete_task'
  get '/log', to: 'home#log', as: 'log'
  resources :tasks
  root 'home#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
