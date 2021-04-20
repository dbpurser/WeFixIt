Rails.application.routes.draw do

  devise_for :users
  root to: redirect('/home')

  get 'home', to: 'pages#home', as: 'home'

  get 'users/:user_id/devices', to: 'devices#index', as: 'user_devices'
  get 'users/:user_id/devices/:device_id', to: 'devices#show', as: 'user_devices_show'

end
