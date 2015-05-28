class User < ActiveRecord::Base
  has_many :question_plays
  has_many :level_plays

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  validates :name, length: { maximum: 30,
    too_long: "%{count} characters is the maximum allowed"}
  validates :role, inclusion: { in: %w(Admin User),
    message: "%{value} is not accepted as a role" }
  validates :brief, length: { maximum: 500,
    too_long: "%{count} characters is the maximum allowed" }
  validates :email, uniqueness: true         
  
  mount_uploader :image, ImageUploader
end
