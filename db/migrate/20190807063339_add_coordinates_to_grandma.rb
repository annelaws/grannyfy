class AddCoordinatesToGrandma < ActiveRecord::Migration[5.2]
  def change
    add_column :grandmas, :latitude, :float
    add_column :grandmas, :longitude, :float
  end
end
