class HomeController < ApplicationController
before_filter :login_required

def index
  @tweets = current_user.all_tweets
  @last_tweet = current_user.tweets.last
end
  
def show
  @user = User.find_by_username(params[:username])
  @tweets = @user.tweets.reverse
end    
  
end
