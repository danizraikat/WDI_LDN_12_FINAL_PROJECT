class TestSerializer < ActiveModel::Serializer
  has_many :levels, except: [:test]
  attributes :id, :image, :name, :brief
end
