class AnswerSerializer < ActiveModel::Serializer
  attributes :id, :question_id, :title, :content, :correctness
end
