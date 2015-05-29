class LevelPlaySerializer < ActiveModel::Serializer
  has_many :question_plays
  has_many :questions 
  has_many :answers 
  attributes :id, :user_id, :level_id, :score 
end
