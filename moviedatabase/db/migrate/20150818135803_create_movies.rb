class CreateMovies < ActiveRecord::Migration
  def change
    create_table :movies do |t|
      t.string :name
      t.text :description
      t.string :rating
      t.string :image
      t.integer :genre_id

      t.timestamps null: false
    end
  end
end
