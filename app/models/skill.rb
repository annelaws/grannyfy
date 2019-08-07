class Skill < ApplicationRecord
  has_many :grandmas, through: :grandma_skills
  validates :name, presence: true, uniqueness: true
end
