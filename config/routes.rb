Rails.application.routes.draw do
  

  root 'pages#home'

  get '/home', to: 'pages#home'
  
  get '/logins', to: 'logins#new'
  

 
  
  get '/login', to:'logins#new'
  post '/login', to:'logins#create'
  get '/logout', to:'logins#destroy'

  
  match ':controller(/:action(/:id))', :via => :get
  resources :sessions
  
 #resources :users, except: [:new]
  #get '/userlogin', to: 'users#new'
  
  resources :users do
    member do
      get :confirm_email
    end
  end
end


