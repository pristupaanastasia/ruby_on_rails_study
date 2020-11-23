class Category < ApplicationRecord
    has_many :data_news
    has_and_belongs_to_many :users
end
