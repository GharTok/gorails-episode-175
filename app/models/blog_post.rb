class BlogPost < ApplicationRecord
  acts_as_paranoid

  belongs_to :user, counter_cache: true
  has_many :categories

  counter_culture :user, column_name: ->(model) { "#{model.state}_blog_posts_count" }

  scope :draft,     ->{ where(state: :draft) }
  scope :published, ->{ where(state: :published) }
end
