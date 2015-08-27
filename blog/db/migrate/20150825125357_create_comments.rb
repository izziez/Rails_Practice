class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.string :author
      t.text :comment_entry
      t.string :blog_post_id
      t.string :integer

      t.timestamps null: false
    end
  end
end
