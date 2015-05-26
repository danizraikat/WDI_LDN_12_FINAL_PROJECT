class Test < ActiveRecord::Base
  has_many :levels 
  has_many :questions
  validates :brief, length: { maximum: 1000,
    too_long: "%{count} characters is the maximum allowed" }
  validates :name, length: { maximum: 50,
    too_long: "%{count} characters is the maximum allowed"}
  validates :name, presence: true
  validates :name, uniqueness: true
end
