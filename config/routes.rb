Rails.application.routes.draw do

  mount Ckeditor::Engine => '/ckeditor'
  resources :posts do
    resources :comments
  end
  resources :contacts

  resources :handies do
  	collection { post :import , :report}
end

  root to: 'posts#index'

  post "/callbacks/webhook", to: "callbacks#webhook"

  devise_for :users, controllers: { registrations: 'devise_for_users/registrations', passwords: 'devise_for_users/passwords', confirmations: 'devise_for_users/confirmations' }

end
