class DataNews < ApplicationRecord
    has_one_attached :image_news
    has_one :categories
end
