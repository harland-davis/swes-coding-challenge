class CreateBuildings < ActiveRecord::Migration[6.0]
  def change
    create_table :buildings do |t|
      t.string :name
      t.string :country
      t.string :address
      t.string :rent_per_floor
      t.integer :number_of_floors

      t.timestamps
    end
  end
end
