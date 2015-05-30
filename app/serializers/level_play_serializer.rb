class LevelPlaySerializer < ActiveModel::Serializer
  has_many :question_plays
  has_many :questions 
  attributes :id, :user_id, :level_id, :score 
end
