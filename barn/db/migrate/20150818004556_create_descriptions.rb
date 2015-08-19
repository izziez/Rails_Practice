class CreateDescriptions < ActiveRecord::Migration
  def change
    create_table :descriptions do |t|
      t.string :name
      t.string :color
      t.string :breed
      t.integer :height
      t.text :markings

      t.timestamps null: false
    end
  end
end
