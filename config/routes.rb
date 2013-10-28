Fakecows::Application.routes.draw do

 root 'pages#home'

 resources :products
 resources :admins
 resources :adminsessions

get "logout" => "adminsessions#destroy", :as => "log_out"
get "login" => "adminsessions#new", :as => "log_in"
get "signup" => "admins#new", :as => "sign_up"

get '/men', :to => 'pages#men'
get '/women', :to => 'pages#women'
get '/furniture', :to => 'pages#furniture'
get '/faux', :to => 'pages#polyurethane'
get '/pinterest-2093b.html', :to => 'pages#pinterest'
end
