class AddColumnToMovies < ActiveRecord::Migration
  def change
    add_column :movies, :actor_id, :integer
  end
end
