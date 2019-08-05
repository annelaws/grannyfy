class CreateReviews < ActiveRecord::Migration[5.2]
  def change
    create_table :reviews do |t|
      t.references :booking, foreign_key: true
      t.text :content
      t.integer :score

      t.timestamps
    end
  end
end
