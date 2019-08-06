class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :bookings
  has_many :reviews, through: :bookings
  has_many :grandmas

  # validations :
  validates :first_name, :last_name, :age, :location, presence: true
  validates :age, numericality: { only_integer: true }
  # email password couple has to be unique but is it handled by devise ?
  # validate uniqueness of first_name last_name and email
  validates_uniqueness_of :email, scope: [:first_name, :last_name]
end
