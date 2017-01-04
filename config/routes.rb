Rails.application.routes.draw do
  resources :user_place_lists
  root 'static_pages#home'
  get 'static_pages/home'
  get 'static_pages/idea_bubbles' => 'static_pages#idea_bubbles', :as => :idea_bubbles
  get 'static_pages/travel_tracker' => 'static_pages#travel_tracker', :as => :travel_tracker
  resources :ideas
end
