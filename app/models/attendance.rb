class Attendance < ApplicationRecord
  belongs_to :event_attendee, class_name: "User", foreign_key: "user_id", optional: true
  belongs_to :attended_event, class_name: "Event", foreign_key: "event_id", optional: true
end
