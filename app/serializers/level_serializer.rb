class LevelSerializer < ActiveModel::Serializer
  has_many :questions
  attributes :id, :test_id, :title, :brief
end
