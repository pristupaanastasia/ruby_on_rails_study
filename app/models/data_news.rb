class DataNews < ApplicationRecord
    has_one_attached :image_news
    belongs_to :category
end
