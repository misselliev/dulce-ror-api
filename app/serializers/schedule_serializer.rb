class ScheduleSerializer < ActiveModel::Serializer
  attributes :id, :talk, :user
  belongs_to :user
  belongs_to :talk
end
