class Event < ApplicationRecord
  has_many :attendances
  belongs_to :creator, class_name: "User", foreign_key: "user_id"
  has_many :attendees, through: :attendances, source: :event_attendee

  scope :upcoming_events, -> { where('date >= ?', Time.now) }
  scope :past_events, -> { where('date <= ?', Time.now) }
end
