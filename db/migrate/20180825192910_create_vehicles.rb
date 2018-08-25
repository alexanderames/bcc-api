class CreateVehicles < ActiveRecord::Migration[5.1]
  def change
    create_table :vehicles do |t|
      t.string :vin
      t.integer :year
      t.string :plate_state
      t.references :make, foreign_key: true

      t.timestamps
    end
  end
end
