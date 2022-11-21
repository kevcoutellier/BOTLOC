class CreateBots < ActiveRecord::Migration[7.0]
  def change
    create_table :bots do |t|
      t.string :name
      t.text :description
      t.float :price
      t.float :rating
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
