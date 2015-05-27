class Answer < ActiveRecord::Base
  belongs_to :question
  has_many :question_plays

  validates_associated :question
  validates :question, :question_id, :content, presence: true 
  validates :question_id, numericality: { only_integer: true }
  validates :title, length: { maximum: 30,
    too_long: "%{count} characters is the maximum allowed"}
end


