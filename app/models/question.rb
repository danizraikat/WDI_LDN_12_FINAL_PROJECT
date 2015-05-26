class Question < ActiveRecord::Base
  belongs_to :test
  belongs_to :level
  validates_associated :test, :level
  validates :test_id, :level_id, :title, :content, presence: true 
  validates :title, length: { maximum: 12,
    too_long: "%{count} characters is the maximum allowed" }
  validates :test_id, :level_id, numericality: { only_integer: true }    
end
