class QuestionSerializer < ActiveModel::Serializer
  has_many :answers
  attributes :id, :test_id, :level_id, :title, :content
end
