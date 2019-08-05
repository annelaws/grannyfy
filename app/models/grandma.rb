class Grandma < ApplicationRecord
  has_many :skills, through: :grandma_skills
  has_many :bookings
  has_many :reviews, through: :bookings
  belongs_to :user
end
