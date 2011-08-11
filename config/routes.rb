KwGis::Application.routes.draw do |map|
  resources :tickets

  resources :user_sessions
  resources :users
  resources(:managers){
    resources :tickets
  }
  resources :home
  resources :access
  
  root :to => "home#index"
  
  map.login "login", :controller => "user_sessions", :action => "new"
  map.logout "logout", :controller => "user_sessions", :action => "destroy"
end
