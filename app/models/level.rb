class Level < ActiveRecord::Base
  validates_associated :tests
  validates :brief, length: { maximum: 500,
    too_long: "%{count} characters is the maximum allowed" }
  validates :title, length: { maximum: 8,
    too_long: "%{count} characters is the maximum allowed" }
  validates :test_id, :title, presence: true
  validates :title, uniqueness: true

end
