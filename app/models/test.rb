class Test < ActiveRecord::Base
  validates :brief, length: { maximum: 1000,
    too_long: "%{count} characters is the maximum allowed" }
  validates :name, length: { maximum: 50,
    too_long: "%{count} characters is the maximum allowed"}
end
