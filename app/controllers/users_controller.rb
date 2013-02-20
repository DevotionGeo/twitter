class UsersController < ApplicationController

def index
end

def show
end

def add_following
	@user = User.find_by_username(params[:username])
	unless current_user.followings.include?(@user)
		current_user.followings << User.find_by_username(@user.username)
	end
	redirect_to user_path
end

def remove_following
	@user = User.find_by_username(params[:username])
   	current_user.followings.delete(User.find_by_username(@user.username))
   	redirect_to user_path
end

def show_tweets
	@user = User.find_by_username(params[:username])
	@tweets = @user.tweets.paginate(:per_page => 20, :page => params[:page], :order => 'created_at DESC')
end

def show_followings
	@user = User.find_by_username(params[:username])
	@followings = @user.followings.paginate(:per_page => 20, :page => params[:page], :order => 'created_at DESC')
end

def show_followers
	@user = User.find_by_username(params[:username])
	@followers = @user.followers.paginate(:per_page => 20, :page => params[:page], :order => 'created_at DESC')
end

end
