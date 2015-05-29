class TestSerializer < ActiveModel::Serializer
  has_many :levels
  attributes :id, :image, :name, :brief
end
