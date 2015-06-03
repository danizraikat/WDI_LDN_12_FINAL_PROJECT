class QuestionPlaySerializer < ActiveModel::Serializer
  has_one :level_play
  attributes :id, :user_id, :question_id, :answer_id, :score
end
