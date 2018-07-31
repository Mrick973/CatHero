class Animal < ApplicationRecord
  belongs_to :user
  has_many :owner_bookings, foreign_key: :animal_id, class_name: "Booking"
end
