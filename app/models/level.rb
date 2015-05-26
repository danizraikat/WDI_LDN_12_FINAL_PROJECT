class Level < ActiveRecord::Base
  belongs_to :test
  validates_associated :test
  validates :brief, length: { maximum: 500,
    too_long: "%{count} characters is the maximum allowed" }
  validates :title, length: { maximum: 8,
    too_long: "%{count} characters is the maximum allowed" }
  validates :test_id, :title, presence: true

end
