class CreateGrandmaSkills < ActiveRecord::Migration[5.2]
  def change
    create_table :grandma_skills do |t|
      t.references :skill, foreign_key: true
      t.references :grandma, foreign_key: true

      t.timestamps
    end
  end
end
