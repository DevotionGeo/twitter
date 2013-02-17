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
  match "/:username/tweets" => 'users#show_tweets', as: "show_tweets"
  match "/:username/followings" => 'users#show_followings', as: "show_followings"
  match "/:username/followers" => 'users#show_followers', as: "show_followers"

end
