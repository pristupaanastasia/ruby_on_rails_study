class DataNewsSerializer < ActiveModel::Serializer
  attributes :id
  has_one :categories
end
