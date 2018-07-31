class Flat < ApplicationRecord
  belongs_to :user
  has_many :caregiver_bookings, foreign_key: :flat_id, class_name: "Booking"
end
