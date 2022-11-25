class ChangeDateToString < ActiveRecord::Migration[7.0]
  def change
    change_column :bookings, :start, :string
    change_column :bookings, :end, :string
  end
end
