Rails.application.routes.draw do
  resources :contacts
  root to: 'pages#index'
end
