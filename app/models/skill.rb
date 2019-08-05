class Skill < ApplicationRecord
  has_many :grandmas, through: :grandma_skills
end
