Rails.application.routes.draw do
  root 'home#home'

  get '/', to: 'home#home', as: 'home'
  get '/today', to: 'home#today', as: 'today'
  get '/upcoming', to: 'home#upcoming', as: 'upcoming'
  get '/log', to: 'home#log', as: 'log'
  get '/trash', to: 'home#trash', as: 'trash'

  resources :tasks
  post '/complete_task/:id', to: 'tasks#complete_task', as: 'complete_task'
end
