class CategorySerializer < ActiveModel::Serializer
  attributes :id
  has_many :data_news
end
