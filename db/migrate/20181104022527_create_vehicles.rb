class CreateVehicles < ActiveRecord::Migration[5.1]
  def change
    create_table :vehicles do |t|
      t.string :make_and_model
      t.date :year
      t.boolean :automatic
      t.integer :door
      t.string :color

      t.timestamps
    end
  end
end
