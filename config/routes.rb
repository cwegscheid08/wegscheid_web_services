Rails.application.routes.draw do
  root 'static_pages#home'
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'
  get '/about', to: 'static_pages#about'
  get '/services', to: 'static_pages#services'
  get '/contact', to: 'static_pages#contact'
  get '/maintenance', to: 'static_pages#maintenance'
  get '/sample_gym', to: 'static_pages#sample_gym'
  resources :members
end
