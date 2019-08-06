class Booking < ApplicationRecord
  belongs_to :grandma
  belongs_to :user
  validates :start_date, :end_date, presence: true
  validate :start_date_valid?, :end_date_valid?
  # custom validation method to check if start date and end date are correct
  def start_date_valid?
    if (start_date && start_date < Date.today )
       errors.add(:start_date, "Can't be in the past")
    end
  end

  def end_date_valid?
    if (end_date && end_date < start_date)
      errors.add(:end_date, "Can't be before the start date")
  end

# && (:start_date < :end_date)
#   def expiration_date_cannot_be_in_the_past
#     if expiration_date.present? && expiration_date < Date.today
#       errors.add(:expiration_date, "can't be in the past")
#     end
#   end

end
