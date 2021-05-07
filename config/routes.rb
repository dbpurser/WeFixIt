Rails.application.routes.draw do



  devise_for :users
  root to: redirect('/home')
  

  get 'home', to: 'pages#home', as: 'home'
  get 'user/:id', to: 'user#show', as: 'user'
  get '/consultations', to: 'consultations#index'
  get 'users', to: 'user#cuslist', as: 'user_list'
  get '/consultations/:id', to: 'consultations#show', as: 'user_consultation'
  

  get 'users/:user_id/devices', to: 'devices#index', as: 'user_devices'
  post 'users/:user_id/devices', to: 'devices#create'
  get 'users/:user_id/devices/new', to: 'devices#new', as: 'new_user_device'
  get 'users/:user_id/devices/new/:device_id/confirm', to: 'devices#confirm', as: 'new_user_device_confirmation'
  get 'users/:user_id/devices/:device_id', to: 'devices#show', as: 'user_devices_show'
  delete 'users/:user_id/devices/:device_id', to: 'devices#destroy'


  get 'users/:user_id/inbox', to: 'messages#index', as: 'user_inbox'
  get 'users/:user_id/outbox', to: 'messages#outbox', as: 'user_outbox'
end
