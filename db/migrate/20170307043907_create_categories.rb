class CreateCategories < ActiveRecord::Migration[5.0]
  def change
    create_table :categories do |t|
      t.references :blog_post, foreign_key: true

      t.timestamps
    end

    add_column :users, :categories_count, :integer, null: false, default: 0
  end
end
