class HomeController < ApplicationController
before_filter :login_required

def index
  @tweets = current_user.all_tweets.paginate(:per_page => 5, :page => params[:page], :order => 'created_at DESC')
  if current_user.tweets.last
    @last_tweet = current_user.tweets.last
  end
end
  
def show
  @user = User.find_by_username(params[:username])
  @tweets = @user.tweets.paginate(:per_page => 20, :page => params[:page], :order => 'created_at DESC')
end    
  
end
