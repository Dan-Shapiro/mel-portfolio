Rails.application.routes.draw do
  get 'pages/about'
  get 'pages/contact'
  root "pages#home"
  resources :posts
  
  devise_for :users
  devise_scope :user do
    get '/users', to: 'devise/registration#new'
    get '/users/password', to: 'devise/passwords#new'
    get '/users/sign_out' => 'devise/sessions#destroy'
  end
end
