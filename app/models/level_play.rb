class LevelPlay < ActiveRecord::Base
  belongs_to :user
  belongs_to :level 
  has_many :question_plays

  validates_associated :user, :level
  validates :score, numericality: { only_integer: true }
  validates :user_id, :level_id, :score, presence: true 
end
