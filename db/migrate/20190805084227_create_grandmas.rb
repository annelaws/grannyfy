class CreateGrandmas < ActiveRecord::Migration[5.2]
  def change
    create_table :grandmas do |t|
      t.string :first_name
      t.string :last_name
      t.integer :age
      t.string :location
      t.string :avatar
      t.references :user, foreign_key: true


      t.timestamps
    end
  end
end
