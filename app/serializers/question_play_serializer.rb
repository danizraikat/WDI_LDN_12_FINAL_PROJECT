class QuestionPlaySerializer < ActiveModel::Serializer
  has_many :questions 
  has_many :answers 
  attributes :id, :user_id, :question_id, :answer_id, :level_play_id
end
