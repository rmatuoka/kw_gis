KwGis::Application.routes.draw do |map|
  resources :hostings

  resources :tickets
  resources :reports
  resources :user_sessions
  resources :users
  resources(:managers){
    resources :tickets
    resources :hostings
  }
  resources(:home){
    collection do
      get 'print'
    end
  }
  resources :access
  resources :surveys
  resources :gallerys
  
  root :to => "access#index"
  
  map.login "login", :controller => "user_sessions", :action => "new"
  map.logout "logout", :controller => "user_sessions", :action => "destroy"
end
