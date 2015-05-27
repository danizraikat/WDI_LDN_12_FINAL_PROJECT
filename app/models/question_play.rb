class QuestionPlay < ActiveRecord::Base
  belongs_to :user
  belongs_to :question
  belongs_to :answer
  belongs_to :level_play
  validates_associated :user, :question, :answer, :level_play
  validates :score, numericality: { only_integer: true }
  validates :user_id, :question_id, :answer_id, :level_play_id, :score, presence: true 
end
