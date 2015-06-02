class LevelPlaySerializer < ActiveModel::Serializer
  has_many :questions
  attributes :id, :user_id, :score, :questions
end
