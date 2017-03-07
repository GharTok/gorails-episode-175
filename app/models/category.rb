class Category < ApplicationRecord
  belongs_to :blog_post
  counter_culture [:blog_post, :user]
end
