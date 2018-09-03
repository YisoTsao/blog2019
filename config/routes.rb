Rails.application.routes.draw do
  
  mount Ckeditor::Engine => '/ckeditor'
  resources :posts
  resources :contacts
  root to: 'posts#index'

  devise_for :users, controllers: { registrations: 'devise_for_users/registrations', passwords: 'devise_for_users/passwords', confirmations: 'devise_for_users/confirmations' }

end
