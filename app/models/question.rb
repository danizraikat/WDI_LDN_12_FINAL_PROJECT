class Question < ActiveRecord::Base
  belongs_to :test
  belongs_to :level
  has_many :answers
  has_many :question_plays
  validates_associated :test, :level
  validates :test, :level, :test_id, :level_id, :title, :content, presence: true 
  validates :title, length: { maximum: 12,
    too_long: "%{count} characters is the maximum allowed" }   
end
