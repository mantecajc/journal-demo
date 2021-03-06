Rails.application.routes.draw do
  devise_for :users
  resources :posts

  get '/services', to: 'posts#service'
  get '/sugestions', to: 'posts#sugestion'
  get '/contact', to: 'posts#contact'

  root 'posts#index'

end
