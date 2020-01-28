class Schedule < ApplicationRecord
  belongs_to :user
  belongs_to :talk
  validates_presence_of :user, :talk

end
