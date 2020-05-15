Rails.application.routes.draw do
  get '/', to: 'home#home', as: 'home'
  post '/complete_task/:id', to: 'tasks#complete_task', as: 'complete_task'
  get '/log', to: 'home#log', as: 'log'
  get '/today', to: 'home#today', as: 'today'
  get '/upcoming', to: 'home#upcoming', as: 'upcoming'
  resources :tasks
  root 'home#home'
end
