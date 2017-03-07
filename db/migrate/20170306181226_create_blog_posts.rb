class CreateBlogPosts < ActiveRecord::Migration[5.0]
  def change
    create_table :blog_posts do |t|
      t.references :user, foreign_key: true
      t.string :title
      t.string :state

      t.timestamps
    end
  end
end
