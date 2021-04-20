Rails.application.routes.draw do

  devise_for :users
  root to: redirect('/home')
  

  get 'home', to: 'pages#home', as: 'home'
  get 'user/:id', to: 'user#show', as: 'user'
  

end
