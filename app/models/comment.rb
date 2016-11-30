class Comment < ActiveRecord::Base
  belongs_to :submission
  belongs_to :user

  validates_length_of :body, :maximum => 500
  validates :user_id, :presence => :true
end