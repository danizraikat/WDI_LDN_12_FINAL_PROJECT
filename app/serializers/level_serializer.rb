class LevelSerializer < ActiveModel::Serializer
  has_one :test, except: [:levels]
  has_many :level_plays
  has_many :questions
  attributes :id, :test_id, :title, :brief
end
