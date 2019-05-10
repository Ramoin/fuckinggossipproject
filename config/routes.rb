Rails.application.routes.draw do
  get 'static_pages/secret'
   devise_for :users
  get 'users/:id', to: 'users#show', as: 'users'
  get '/welcome/:id', to: 'welcome#show' 
  get '/contact', to: 'contact#show'
  get '/team', to: 'team#show'
  get '/', to: 'home#show'
  resources :gossips

end
