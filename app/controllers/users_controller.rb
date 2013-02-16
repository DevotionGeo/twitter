class UsersController < ApplicationController

def index
end

def show
end

def add_following
	@user = User.find_by_username(params[:username])
	unless current_user.followings.include?(@user)
		current_user.followings << User.find(User.where(username: @user.username))
	end
	redirect_to user_path
end

def remove_following
	@user = User.find_by_username(params[:username])
   	current_user.followings.delete(User.find(User.where(username: @user.username)))
   	redirect_to user_path
end

end
