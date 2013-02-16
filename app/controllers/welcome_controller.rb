class WelcomeController < ApplicationController
  
#def index
  #if current_user
   # @tweets = current_user.all_tweets#.paginate(:per_page => 5, :page => params[:page],:order      => 'created_at DESC')  
 # end
#end
   
   
def index
  if logged_in?
    @tweets = current_user.all_tweets.paginate(:per_page => 5, :page => params[:page], :order => 'created_at DESC')
    if current_user.tweets.last
      @last_tweet = current_user.tweets.last
    end
  end
end
  
def show
  if logged_in?
    @user = User.find_by_username(params[:username])
    if @user
      @tweets = @user.tweets.paginate(:per_page => 5, :page => params[:page], :order => 'created_at DESC')
    end
  end
end

end
