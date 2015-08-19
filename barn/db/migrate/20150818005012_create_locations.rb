class CreateLocations < ActiveRecord::Migration
  def change
    create_table :locations do |t|
      t.string :stall_number
      t.string :integer
      t.string :pasture_number
      t.string :integer
      t.string :Feeding_Instructions_AM
      t.string :text
      t.string :Feeding_Instructions_Lunch
      t.string :text
      t.string :Feeding_Instructions_PM
      t.string :text
      t.string :General_Behavior_Notes
      t.string :text

      t.timestamps null: false
    end
  end
end
