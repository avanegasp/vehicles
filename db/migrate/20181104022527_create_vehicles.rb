class CreateVehicles < ActiveRecord::Migration[5.1]
  def change
    create_table :vehicles do |t|
      t.string :driver
      t.string :make_and_model
      t.date :year
      t.string :transmission
      t.integer :door_count
      t.string :color

      t.timestamps
    end
  end
end
