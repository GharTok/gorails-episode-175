class AddPublishedBlogPostsCountDraftBlogPostsCountArchivedBlogPostsCountToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :published_blog_posts_count, :integer, :null => false, :default => 0
    add_column :users, :draft_blog_posts_count, :integer, :null => false, :default => 0
    add_column :users, :archived_blog_posts_count, :integer, :null => false, :default => 0
  end
end
