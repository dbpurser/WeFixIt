Rails.application.routes.draw do

  devise_for :users
  root to: redirect('/home')

  get 'home', to: 'pages#home', as: 'home'

end
