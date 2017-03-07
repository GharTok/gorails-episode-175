class AddDeletedAtToBlogPosts < ActiveRecord::Migration[5.0]
  def change
    add_column :blog_posts, :deleted_at, :datetime
    add_index :blog_posts, :deleted_at
  end
end
