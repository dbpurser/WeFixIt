Rails.application.routes.draw do

  devise_for :users
  root to: redirect('/home')

  get 'home', to: 'pages#home', as: 'home'

  
  post 'users/:user_id/devices', to: 'devices#create', as: 'user_devices'
  get 'users/:user_id/devices/new', to: 'devices#new', as: 'new_user_device'

end
