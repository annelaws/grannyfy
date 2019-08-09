class Grandma < ApplicationRecord
  mount_uploader :avatar, PhotoUploader
  has_many :grandma_skills, dependent: :destroy
  has_many :skills, through: :grandma_skills
  has_many :bookings, dependent: :destroy
  has_many :reviews, through: :bookings, dependent: :destroy
  belongs_to :user
  validates :age, numericality: { only_integer: true }
  validates :first_name, :last_name, :age, :location, :avatar, presence: true
  validates_uniqueness_of :location, scope: [:first_name, :last_name]
  geocoded_by :location
  after_validation :geocode, if: :will_save_change_to_location?
  include PgSearch
    pg_search_scope :search_by_first_name_and_last_name,
    against: [ :first_name, :last_name ],
    associated_against: {
      skills: [ :name ],

    },

    using: {
      tsearch: { prefix: true }
    }


    def set_grandma_skills(ids, grandma)
      ids.each do |skill|
        GrandmaSkill.create(skill_id: skill, grandma: grandma)
      end
    end
end
