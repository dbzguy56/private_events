class User < ApplicationRecord
  has_many :attendances
  has_many :events, :foreign_key => "user_id", :class_name => "Event"
  has_many :attended_events, through: :attendances, source: :attended_event

  scope :upcoming_events, -> { where('event_date >= ?', Time.now) }
  scope :past_events, -> { where('event_date <= ?', Time.now) }
end
