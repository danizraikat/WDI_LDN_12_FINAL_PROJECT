class QuestionPlaySerializer < ActiveModel::Serializer
  attributes :id, :user_id, :question_id, :answer_id, :level_play_id, :score
end
