class Flat < ApplicationRecord
  belongs_to :user
  has_many :caregiver_bookings,
           foreign_key: :flat_id,
           class_name: "Booking"
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
end
