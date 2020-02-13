# frozen_string_literal: true

class Schedule < ApplicationRecord
  belongs_to :user
  belongs_to :talk
  validates_presence_of :user, :talk
  validate :already_scheduled?, on: :create

  def already_scheduled?
    errors.add(:user_id, 'already requested') if Schedule.where("user_id = #{user_id} AND talk_id = #{talk_id}").exists?
  end
end
