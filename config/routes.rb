Rails.application.routes.draw do
  
  mount Ckeditor::Engine => '/ckeditor'
  resources :posts
  root to: 'posts#index'

  devise_for :users, controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }

end
