class TweetsController < ApplicationController
#before_filter :login_required

def create
  tweet = current_user.tweets.new(params[:tweet])
  tweet.message = tweet.message[0..139]
 #tweet.created_at = Time.now
  tweet.save!
  redirect_to root_path
end

def destroy
end

def index
	redirect_to root_path
end

def show
	@tweet = Tweet.find_by_id(params[:id])
end

end
