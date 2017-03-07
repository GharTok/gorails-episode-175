class Tagging < ApplicationRecord
  belongs_to :product, counter_cache: :tags_count
  belongs_to :tag, counter_cache: :products_count
end
