class AddAddressToBots < ActiveRecord::Migration[7.0]
  def change
    add_column :bots, :address, :string
  end
end
