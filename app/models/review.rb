class Review < ApplicationRecord
  belongs_to :booking
  validates :content, :score, presence: true
  validates :score, numericality: true, inclusion: { in: %w(0 1 2 3 4 5),
    message: "%{value} is not a valid score please rate from 0 to 5" }
end
