class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  
  has_many :animals
  has_many :flats
  has_many :caregiver_bookings, through: :flats
  has_many :owner_bookings, through: :animals
end
