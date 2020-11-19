module Api::V1
  class DataNewsSerializer < ActiveModel::Serializer
    attributes :id
    has_one :categories
  end
end
