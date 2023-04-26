Rails.application.routes.draw do
  get 'pages/about'
  get 'pages/contact'
  root "pages#home"
  resources :posts
end
