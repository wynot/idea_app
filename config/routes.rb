Rails.application.routes.draw do
  resources :opportunities
  resources :ideas
  root 'application#hello'
end
