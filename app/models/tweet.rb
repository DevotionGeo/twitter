class Tweet < ActiveRecord::Base
  attr_accessible :message, :user_id
  
  belongs_to :user
  validates_presence_of :user_id, :message
end
