class Review < ActiveRecord::Base
  belongs_to :user
  belongs_to :game
  validates_presence_of :rating

  validates_uniqueness_of :user_id
end
