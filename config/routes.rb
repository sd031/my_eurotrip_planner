MyEurotripPlanner::Application.routes.draw do
  root :to => 'trips#home'
  match '/about', to: 'information_pages#about', via: 'get'
  match '/contactus', to: 'information_pages#contactus', via: 'get'
  match '/itinerary', to: 'trips#create', via: 'get'
  match '/home', to: 'trips#home', via: 'get'

  resources :comments
  resources :trips
end
