Twitter::Application.routes.draw do
  match 'auth/:provider/callback', to: 'sessions#create'
  match 'auth/failure', to: redirect('/')
  match 'signout', to: 'sessions#destroy', as: 'signout'

  resources :tweets
  
  root :to => 'welcome#index'
  #match "/home" => "home#index"  
  
  match "/:username" => 'welcome#show', as: "user"

  match "/:username/follow" => 'users#add_following', as: "follow"
  match "/:username/unfollow" => 'users#remove_following', as: "unfollow"

end
