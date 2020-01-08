Rails.application.routes.draw do
  # root 'static_pages#home'
  root 'static_pages#construction'
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'
  get '/about', to: 'static_pages#about'
  get '/services', to: 'static_pages#services'
  get '/contact', to: 'static_pages#contact'
  get '/maintenance', to: 'static_pages#maintenance'
  get '/log_cabin', to: 'static_pages#log_cabin'
  get '/news', to: 'static_pages#news'
  get '/portfolio', to: 'static_pages#portfolio'
  get '/construction', to: 'static_pages#construction'
  resources :members
end
