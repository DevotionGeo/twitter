class UsersFollowing < ActiveRecord::Base
  attr_accessible :following_id, :user_id
end
