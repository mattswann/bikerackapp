Rails.application.routes.draw do
 
devise_for :users, controllers: { omniauth_callbacks: "omniauth_callbacks" }

root 'pages#index'

get '/login' => 'session#new'
post '/login' => 'session#create'
delete '/login' => 'session#destroy'


get '/sign_up' => 'users#new'
post '/sign_up' => 'users#create'

resources :bikeracks
resources :users
resources :feedbacks
resources :faq
resources :nearme



end
