class Grandma < ApplicationRecord
  mount_uploader :avatar, PhotoUploader
  has_many :grandma_skills
  has_many :skills, through: :grandma_skills
  has_many :bookings
  has_many :reviews, through: :bookings
  belongs_to :user
  validates :age, numericality: { only_integer: true }
  validates :first_name, :last_name, :age, :location, :avatar, presence: true
  validates_uniqueness_of :location, scope: [:first_name, :last_name]
end
