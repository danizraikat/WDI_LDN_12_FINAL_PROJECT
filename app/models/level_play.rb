class LevelPlay < ActiveRecord::Base
  belongs_to :user
  belongs_to :level 
  has_many :question_plays

  validates_associated :user, :level
  validates :user_id, :level_id, :max_score, :score, numericality: { only_integer: true }
  validates :user_id, :level_id, :max_score, :score, presence: true 
end
