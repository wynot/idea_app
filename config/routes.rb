Rails.application.routes.draw do
  root 'static_pages#home'
  get 'static_pages/home'
  resources :opportunities
  resources :ideas
end
