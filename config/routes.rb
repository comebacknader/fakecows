Fakecows::Application.routes.draw do

 root 'pages#home'

 resources :products
 resources :admins
 resources :adminsessions

get "logout" => "adminsessions#destroy", :as => "log_out"
get "login" => "adminsessions#new", :as => "log_in"
get "signup" => "admins#new", :as => "sign_up"
 
end
