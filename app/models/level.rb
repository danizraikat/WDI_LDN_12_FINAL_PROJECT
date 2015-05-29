class Level < ActiveRecord::Base
  belongs_to :test
  has_many :questions 
  has_many :level_plays 
  
  validates_associated :test
  validates :brief, length: { maximum: 500,
    too_long: "%{count} characters is the maximum allowed" }
  validates :title, length: { maximum: 8,
    too_long: "%{count} characters is the maximum allowed" }

end






