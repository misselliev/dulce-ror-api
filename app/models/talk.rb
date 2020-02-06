class Talk < ApplicationRecord
  before_save :capitalize_fields
  belongs_to :creator, :foreign_key => "creator_id", :class_name => "User"
  has_many :schedules, dependent: :destroy
  
  validates_presence_of :title, :description, :location, :date, :time, :speaker_name, :speaker_title, :creator_id

   def capitalize_fields
      self.title.capitalize!
      self.description.capitalize!
      self.location.capitalize!
      self.speaker_name.capitalize!
      self.speaker_title.capitalize!
   end

end
