class TalkSerializer < ActiveModel::Serializer
  attributes :id, :title, :description, :location, :date, :time, :speaker_name, :speaker_title
end
