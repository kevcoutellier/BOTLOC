class AddCoordinatesToBots < ActiveRecord::Migration[7.0]
  def change
    add_column :bots, :latitude, :float
    add_column :bots, :longitude, :float
  end
end
