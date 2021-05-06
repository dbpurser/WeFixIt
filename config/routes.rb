Rails.application.routes.draw do

  devise_for :users
  root to: redirect('/home')
  

  get 'home', to: 'pages#home', as: 'home'
  get 'user/:id', to: 'user#show', as: 'user'
  get 'users', to: 'user#cuslist', as: 'user_list'
  

  get 'users/:user_id/devices', to: 'devices#index', as: 'user_devices'
  post 'users/:user_id/devices', to: 'devices#create'
  get 'users/:user_id/devices/new', to: 'devices#new', as: 'new_user_device'
  get 'users/:user_id/devices/:device_id', to: 'devices#show', as: 'user_devices_show'

end
