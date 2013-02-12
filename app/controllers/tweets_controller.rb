class TweetsController < ApplicationController
before_filter :login_required

def create
  tweet = current_user.tweets.new(params[:tweet])
  tweet.created_at = Time.now
  tweet.save!
  redirect_to "/home"
  
end

def destroy
end

end
