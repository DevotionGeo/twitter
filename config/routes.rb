Twitter::Application.routes.draw do
  match 'auth/:provider/callback', to: 'sessions#create'
  match 'auth/failure', to: redirect('/')
  match 'signout', to: 'sessions#destroy', as: 'signout'
    
  resources :tweets
  
  root :to => 'welcome#index'
  #match "/home" => "home#index"  
  
  match "/:username" => 'welcome#show', as: "user"

end
